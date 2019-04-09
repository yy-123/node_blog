var express = require('express')
var path = require('path')
var bodyParser = require('body-parser')
var session = require('express-session')
var router = require('./router')

var app = express()

//开放目录权限
app.use('/node_modules/', express.static(path.join(__dirname, './node_modules/')))
app.use('/public/', express.static(path.join(__dirname, './public/')))

// 模板引擎
app.engine('html', require('express-art-template'))
app.set('views', path.join(__dirname,'./views/'))

//配置表单解析 （一定要在 app.use(router) 之前 ）
app.use(bodyParser.urlencoded({ extended: false}))
app.use(bodyParser.json())

// 在 Express 这个框架中，默认不支持 Session 和 Cookie
// 但是我们可以使用第三方中间件：express-session 来解决
app.use(session({
  secret: '123456',
  resave: false,
  saveUninitialized: false // 无论你是否使用 Session ，我都默认直接给你分配一把钥匙
}))

//挂载路由
app.use(router)

//配置一个404的中间件
app.use((req, res) => {
  res.render(path.join(__dirname, '/views/_layout/404.html'))
})

// 配置一个全局错误处理中间件
app.use((err, req, res, next) => {
  res.status(500).json({
    err_code: 500,
    message: err.message
  })
})

//路由监听
app.listen('3000', ()=>{
  console.log('blog is running ...')
})