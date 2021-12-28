const express= require("express");
const execSQL = require("../tool/sz_mysql")

let router= express.Router();

router.get("/web_config", (req, resp) =>{


    execSQL( `
       SELECT
        wechat_qrcode,
        mini_program,
        wb_qrcode,
        app,
        tel
        FROM
        t_config;`).then(result => {
            console.log(result);
            resp.send(result)
    })
} )


module.exports= router;