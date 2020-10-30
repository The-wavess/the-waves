const express = require("express");
const server = express();
const cors = require("cors");
const bodyParser = require("body-parser");
// 下载MySQL模块
//引入MySQL模块，创建连接池
const mysql = require("mysql");
const { runInNewContext } = require("vm");
const { start } = require("repl");
const pool = mysql.createPool({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "",
  database: "limt",
  connectionLimit: 20,
});
server.use(
  bodyParser.urlencoded({
    extended: false,
  })
);

// 下载cors插件，解决跨域问题
server.use(
  cors({
    //提供两个可自行选择的地址
    // 此时创建接口已经完全畅通
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  })
);
// 设置端口
server.listen(3000, () => {
  console.log("server is running······");
});

//冬冬
server.get("/header/:like", (req, res) => {
  let like = req.params.like;
  like = "%" + like + "%";
  let sql =
    "select move_row.move_sid,move_row.move_img,move_row.move_name,move_row.move_type,move_row.move_time,actor.actor from move_row,actor where move_type  like ?  or move_name like ? or move_time like ? or actor  like ?";
  pool.query(sql, [like, like, like, like], (err, results) => {
    if (err) throw err;
    let pagecount = results.length;
    res.send({ results, pagecount });
  });
});
server.post("/move_insert", (req, res) => {
  let move_name = req.body.move_name;
  let move_img = req.body.move_img;
  let price = req.body.price;
  let count = req.body.count;
  let today = req.body.today;
  let sql = "insert into buys values(?,?,?,?,?,?)";
  pool.query(
    sql,
    [null, move_name, today, count, price, move_img],
    (err, results) => {
      if (err) throw err;
      res.send("成功");
    }
  );
});
server.get("/move_name", (req, res) => {
  let sql = "select lunbo from move_lunbo";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

server.get("/move_img", (req, res) => {
  let sql = "select * from move_row  limit 20";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

server.get("/move_index", (req, res) => {
  let n = req.query.n;
  let sql = "select move_sid from move_row";
  let start = (n - 1) * 18;
  pool.query(sql, (err, results) => {
    if (err) throw err;
    let rowpage = results.length;
    let pagecount = Math.ceil(rowpage / 18);

    let sql = "select *   from move_row  limit " + start + "," + 18;
    pool.query(sql, (err, results) => {
      if (err) throw err;

      res.send({ code: 1, results, pagecount });
    });
  });
});

server.get("/detail/:lid", (req, res) => {
  let move_sid = req.params.lid;
  sql = "select  * from move_row where move_sid=?";
  pool.query(sql, [move_sid], (err, results) => {
    if (err) throw err;

    sql = "select * from actor where famillc = ?";
    pool.query(sql, [move_sid], (err, result) => {
      if (err) throw err;

      res.send({ code: 1, results, result });
    });
  });
});
server.get("/type/:move_type", (req, res) => {
  let move_type = req.params.move_type;
  move_type = "%" + move_type + "%";
  sql = "select * from move_row where move_type  like ? limit 0,6";
  pool.query(sql, [move_type], (err, results) => {
    if (err) throw err;
    let pagecount = results.length / 6;
    res.send({ code: 1, results, pagecount });
  });
});

server.get("/xiang", (req, res) => {
  sql = "select * from move_name";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ code: 1, results });
  });
});

server.get("/ying/:sid", (req, res) => {
  let sid = req.params.sid;
  sql = "select * from move_name,M_server where (sid = ? and M_id = ?)";
  pool.query(sql, [sid, sid], (err, results) => {
    if (err) throw err;

    res.send({ code: 1, results });
  });
});
//座位
server.get("/zuowei", (req, res) => {
  sql = "select * from setdown";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result });
  });
});

//嘉欣
server.get("/index", (req, res) => {
  let currentPage = req.query.currentPage;
  let pageSize = req.query.pageSize;
  let start = (currentPage - 1) * pageSize;
  let sql = `SELECT bid,b_name,b_type,b_place,b_address,b_service_1,b_service_2,b_service_3,b_service_4,b_tag_1,b_tag_2,b_tag_3,b_score,b_evaluate,b_pic FROM jd_business LIMIT ${start},${pageSize}`;
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

//详情页接口
server.get("/jd_details", (req, res) => {
  let id = req.query.id;
  console.log(id);

  let sql = "select * from jd_business where bid = ?";
  // let sql='SELECT b_name,b_type,b_place,b_address,b_service_1,b_service_2,b_service_3,b_service_4,b_score,b_evaluate,FROM jd_business LIMIb_mg,b_phone,b_service_1,b_service_2,b_service_3,b_service_4 FROM jd_business where bid = ?'
  pool.query(sql, [id], (err, results) => {
    if (err) throw err;
    res.send({ message: "查询成功", code: 1, results: results });
  });
});

//关键字查询接口
server.get("/zhonglou", (req, res) => {
  let sql = "select * from jd_business where b_place like '%钟鼓楼%'";
  pool.query(sql, (err, results) => {
    res.send(results);
  });
});

//按酒店类型搜索接口
server.get("/jingjixing", (req, res) => {
  let sql = "select * from jd_business where b_type='经济型'";
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

//韦伟

server.get("/login", (req, res) => {
  let sql = "select * from mt_family limit 0,10";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    } else {
      res.send("0");
    }
  });
});
//获取文章分页的接口
server.get("/login2", (req, res) => {
  let sql = "select * from mt_family limit 10,10";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    } else {
      res.send("0");
    }
  });
});
server.get("/like", (req, res) => {
  let sql = "select * from MY_like";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    } else {
      res.send("0");
    }
  });
});
server.get("/likes", (req, res) => {
  let sql = "select * from MY_like where id<6";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
server.get("/details", (req, res) => {
  let fid = req.query.fid;
  let sql = "select * from MT_laptop where fid=?";
  pool.query(sql, [fid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    }
  });
});
server.get("/list", (req, res) => {
  let fid = req.query.fid;
  let sql = "select * from mt_family where fid=?";
  pool.query(sql, [fid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    }
  });
});
server.get("/pinglun", (req, res) => {
  let sql = "select * from MT_pl";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
//筛选网吧网咖的接口
server.get("/wangba", (req, res) => {
  let sql = "select * from mt_family where leixing='网吧网咖'";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
server.get("/mishi", (req, res) => {
  let sql = "select * from mt_family where leixing='密室逃脱'";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
server.get("/jiage", (req, res) => {
  let sql = "select * from mt_family order by price_per asc limit 0,10";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
server.get('/lunbo',(req,res)=>{
  let sql = "select * from MY_LUNBO";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
server.post('/goumai',(req,res)=>{
  let u_id = req.body.u_id;
  let u_title = req.body.u_title;
  let times = req.body.times;
  let num = req.body.num ;
  let total_fee = req.body.total_fee;
  let pic_path = req.body.pic_path;
  let sql = "insert into buys values(?,?,?,?,?,?)";
  pool.query(sql,[ u_id,u_title,times,num,total_fee,pic_path],(err,result)=>{
    if(err) throw err;
    res.send('成功');
  })
})

//刘艳萍
//获取小图片的接口
server.get('/pic',(req,res)=>{
  //查找商家中的所有数据

  let sql = 'SELECT c_id,c_img FROM pic';
  //通过MySQL连接池执行SQL语句
  pool.query(sql,(err,results)=>{
    if(err) throw err;
    res.send({message:'查询成功',code:1,results:results});
  });
});


//获取所有商家的接口
server.get('/bussines',(req,res)=>{
  //查找商家中的所有数据

  let sql = 'SELECT b_id,b_name,average_person,b_pic,b_desc,b_talk,href FROM bussines';
  //通过MySQL连接池执行SQL语句
  pool.query(sql,(err,results)=>{
    if(err) throw err;
    res.send({message:'查询成功',code:1,results:results});
  });
});

//获取所有商家的接口
server.get('/bus',(req,res)=>{
  //查找商家中的所有数据

  let sql = 'SELECT r_id,r_name,r_pic,r_adr,price FROM bus';
  //通过MySQL连接池执行SQL语句
  pool.query(sql,(err,results)=>{
    if(err) throw err;
    res.send({message:'查询成功',code:1,results:results});
  });
});



server.get('/buy',(req,res)=>{
  //查找商家中的所有数据

  let sql = 'SELECT u_id,u_name,u_price,num FROM buy';
  //通过MySQL连接池执行SQL语句
  pool.query(sql,(err,results)=>{
    if(err) throw err;
    res.send({message:'查询成功',code:1,results:results});
  });
});









// 用户登录接口
server.post('/login',(req,res)=>{
	let phone=req.body.phone;
	let upwd=req.body.upwd;
	let uname=req.body.uname;
	let sql='select phone,upwd,uname from user where phone=? and upwd=?';
	pool.query(sql,[phone,upwd],(err,result)=>{
		if(err) throw err;
		 if(result.length>0){
			 res.send({message:'登陆成功',code:1,result:result})
			 
		 }else{
			 res.send({message:'登陆失败',code:0})
		 }
	})
});

// 用户注册接口
server.post('/register',(req,res)=>{
	let phone=req.body.phone;
	let upwd=req.body.upwd;
	let uname=req.body.uname;
	// 先检测用户是否已经存在
	let sql='select phone from user where phone=?'
	pool.query(sql,[phone],(err,result)=>{
		if(err) throw err;
		if(result.length==0){
			let mysql='INSERT INTO user(phone,upwd,uname) VALUES(?,?,?)';
			pool.query(mysql,[phone,upwd,uname],(err,result)=>{
				if(err) throw err;
				res.send({message:'注册成功',code:1})
			});
		}else{
			res.send({message:'注册失败',code:0})
		}
	})
})
// 查询订单
server.get('/order',(req,res)=>{
      let sql='select * from buys';
      pool.query(sql,(err,result)=>{
      if(result.length>0){
        res.send({message:"注册成功",code:1,result:result})
      }  
      });
    });


//获取特定分类下的文章信息的接口

// server.get('/lists',(req,res)=>{
//   //接收客户端传递的URL参数中的cid  -- 文章分类ID
//   let cid = req.query.cid;

//   //接收客户端传递的URL参数中的page -- 页码
//   let page = req.query.page;

//   //存储每页显示的记录数(其实pagesize就是一个纯变量,与分页没有任何关系)
//   let pagesize = 15;

//   //根据MySQL分页的标准计算公式计算出offset参数值,并且带入到SQL语句中
//   let offset = (page - 1) * pagesize;

//   //现以接收到cid为条件进行文章信息的查找,此时的pagesize才是真正的返回多少条记录呢
//   let sql = 'SELECT id,subject,description,image FROM xzqa_article WHERE category_id = ? LIMIT ' + offset + ',' + pagesize;

//   //存储总记录数
//   let rowcount;
//   //存储总页数
//   let pagecount;

//   //执行SQL查询
//   pool.query(sql,[cid],(err,result)=>{
//     if(err) throw err;
//     /////////////////
//     //1.获取记录数
//     sql = 'SELECT COUNT(id) AS count FROM xzqa_article WHERE category_id=?';
//     pool.query(sql,[cid],(err,results)=>{
//       if(err) throw err;
//       rowcount = results[0].count;
//       //2.计算总页数
//       pagecount = Math.ceil(rowcount / pagesize);
//       //返回原来的查询记录的数据及总页数信息
//       res.send({message:'查询成功',code:1,results:result,pagecount:pagecount});
//     });
//     /////////////////

//   })
// });

// //获取特定文章信息的API接口
// server.get('/article',(req,res)=>{
//   //获取文章ID
//   let id = req.query.id;

//   //SQL查询 -- 多表(内)连接
//   let sql = 'SELECT r.id,subject,content,created_at,nickname,avatar,article_number FROM xzqa_author AS u INNER JOIN xzqa_article  AS r ON  author_id = u.id WHERE r.id=?';
//   //执行SQL语句
//   pool.query(sql,[id],(err,results)=>{
//     if(err) throw err;
//     res.send({message:'查询成功',code:1,result:results[0]});
//   });
// });
