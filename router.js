var express = require('express')
var User = require('./models/user.js')
var md5 = require('blueimp-md5')

var router = express.Router()

router.get('/', (req, res) => {
  res.render('index.html', {
    user: req.session.user
  })
})

router.get('/login', (req, res) => {
  res.render('login.html')
})

//用户登录
router.post('/login', (req, res, next) => {
   var body = req.body
   User.findOne({
     email: body.email,
     pwd: md5(md5(body.pwd))
   }, (err, user) => {
      console.log(err, user)
      if(err){
        return next(err)
      }
      if(!user){
        return res.status(200).json({
          err_code:1,
          message: 'email or pwd is invailid'
        })
      }
      //用户存在并且匹配登录成功 通过Session记住登录状态
      req.session.user = user
      res.status(200).json({
        err_code:0,
        message: 'Ok'
      })
   })
})


//用户注册view
router.get('/register', (req, res) => {
   res.render('register.html')
})


//用户注册
router.post('/register', (req, res, next) => {
  User.register({
    email: req.body.email,
    name: req.body.name,
    pwd: md5(md5(req.body.pwd))
  }, (err, mess) => {
    if(err){
      return next(err)
    }
    if(!mess){
      res.status(200).json({
        err_code: 1,
        message: 'email has exit'
      })
    }
    res.status(200).json({
      err_code: 0,
      message: 'ok'
    })
  })
})



module.exports = router
