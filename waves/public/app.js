const express=require('express');
const move=require('./router/move.js');
const bodyParser=require('body-parser');
var app=express();
app.listen(8080,()=>{
	console.log("server runing……")
});
app.use(express.static('./public'));
app.use(bodyParser.urlencoded({
	extended:false
}));
app.use('/move',move);
