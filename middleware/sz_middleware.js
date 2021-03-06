const path = require("path");
const fs = require("fs");
const {getCurrentTime} = require("../tool/sz_dateTime")
const {sendmail} = require("../tool/sz_email")
const {execSQL} = require("../tool/sz_mysql")
const {sendMail} = require("../tool/sz_mail");


let crossDomainM = (req,resp,next) =>{
    resp.header("Acces-Control-Allow-Origin", "*")
    resp.header("Acces-Control-Allow-Method",'GET,PUT,POST,DELETE')
    resp.header("Acces-Control-Allow-Header", "Content-Type")
    next()
}

let notFoundMF = function (notFoundFilePath) {
    if (!path.isAbsolute(notFoundFilePath)) {
        throw Error("必须页转递一个绝对路径")
    }
    return(req,resp) => {


        resp.status(404).sendFile(notFoundFilePath)
    }
}
 let rizhiM =(req,resp,next) => {
        let method = req.method;
        let path = req.path;
        let params = {};
        if(method.toLowerCase() ==="get") {
            params = req.query;
        }
        else if(method.toLowerCase() ==="post") {
            params = req.body;
         }
        let ua = req.headers("user-agent");


         execSQL("insert into log(method, path,params,user-agent)values(?，?,?,?);", [method,path,
         JSON.stringify(params),ua]).then(result => {
             console.log("记录日志成功")
         } )
          next()
}

 let handlerErrorMF = function ( errorResponseFilePath) {
    if( !path.isAbsolute(errorResponseFilePath)) {
        throw Error("请转入一个绝对路径")
    }
     return (err, req, resp, next) => {
        let err_type=err.name;
        let err_msg= err.message;
        let err_stack = err.stack;
        let info = `
        ==============================
        错误类型:${err_type}
        错误描述:${err_msg}
        错误时间:${getCurrentTime()}
        错误堆栈:${err_stack}
        ============================
        `

        execSQL("insert into error (err_type, err_msg, err_stack) value (?,?,?) ", [err_type,err_msg,
        JSON.stringify(err_stack)]).then(result =>{
            if (result.affectedRows >= 1) {
                sendMail("3144106351@qq.com", "错误报告",info)
            }
        })



         resp.status(500).sendFile(errorResponseFilePath)
     }
 }

 module.exports={
    notFoundMF,
     rizhiM,
     crossDomainM,
     handlerErrorMF
 }