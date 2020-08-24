const express=require('express');
const r=express.Router();
const pool=require('../pool.js');
r.get('/login/:name',(req,res)=>{
	var _name=req.params.name;
	console.log(123)
	sql='select * from move_name where name=?';
	pool.query(sql,[_name],(err,result)=>{
		if(err)throw err;
		console.log(result)
		if(result.length>0){
			res.send('1');
		}else{
			res.send('0');
		}
	});
});
module.exports=r;