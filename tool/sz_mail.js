const nodemailer = require("nodemailer");

let transporter = nodemailer.createTransport({
    host: 'sntp.qq.com',
    secureConnection: true,
    port: 465,
    secure:true,
    auth: {
        user:'3144106351@qq.com',
        pass:'Wang170200zi'
    }
})

function sendMail(toUser, title, content) {
    let mailOptions={
        from:'"掠课Sz" <3144106351@qq.com>',
        to: toUser,
        subject:title,
        html:content,
    attachments:(
        {
            filename: "错误报告.txt",
            content
        }
    )
    }
    transporter.sendMail(mailOptions).then(result =>{
        console.log('Message:${result.messageId}');
        console.log('sent:${result.response}');
    })
}
module.exports ={
    sendMail
}