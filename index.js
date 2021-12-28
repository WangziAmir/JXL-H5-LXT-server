const express= require("express");
const path = require("path");

const {rizhiM, notFoundMF,handleErrorMF,crossDomainM} = require("../middleware/sz_middleware")
const homeRouter = require("./routers/homeRouter")

let app= express();

app.use(crossDomainM);
app.use(express.json(), express.urlencoded({extended:true}));
app.use(rizhiM);

app.use(express.static(path.resolve(__dirname, "public")));
app.use ("/home", homeRouter);




app.use(notFoundMF(path.resolve(__dirname,"./defaultPages/404.html")));

app.use(handleErrorMF(path.resolve(__dirname,"./defaultPages/500.html")));

app.listen(5000,  ()  => {
console.log("聊学堂-后端项目服务器启动成功：localhost:5000/");
} )


