const mysql = require("mysql");

let pool = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: 'itlike',
    database: 'itlike_lxt',
});

function execSQL(sqlTemg,value =[], successCB, failCB) {
    return new Promise((resolve, reject) => {
        pool.query(sqlTemg,value,function (error,results, fields) {
            if (error) {
               if(typeof failCB === "function") {
                   failCB(error);
               }
               reject(error)
            } else {
                if(typeof successCB === "function") {
                    successCB(results);
                }

            }
            
        })
    })
}