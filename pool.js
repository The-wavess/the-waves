const mysql=require('mysql');
const pool=mysql.createPool({
	host:'127.0.0.1',
	port:'3306',
	user:'root',
	possword:'',
	database:'limt',
	connectionLimit:20
});
module.exports=pool;