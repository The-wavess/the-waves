const express=require('express');
const r=express.Router();
const pool=require('../pool.js');
r.get('/login',(req,res)=>{
	var _name=req.quwry;
	console.log(123)
	sql='select * from move_name';
	pool.query(sql,(err,result)=>{
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