var mysql = require('mysql')
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'blog'
})


let findOne = (user, callback) => {
  connection.query('select * from users', (err, res) => {
    if(err){
      return callback(err)
    }
    let data = res.find(item => {
      return item.email === user.email
    })
    console.log(data)
    if(!data || data.pwd !== user.pwd){
      return callback(null)
    }
    callback(null, data)
  })
}

let register = (user, callback) => {
  let sql = 'select * from users where email=' + "'" + user.email + "'";
  connection.query(sql, (err, res) => {
    console.log(err,res)
    if(err){
      return callback(err)
    }
    if(res.length != 0){
      return callback(null)
    }
    next()
  })

  let next = () => {
    let sql = 'insert into users (email,pwd,name) values (' + "'" + user.email + "'" +', '+  "'" + user.pwd + "'" +', ' + "'" +user.name + "'" + ')'
    console.log(sql)
    connection.query(sql, (err, res) => {
      if(err){
        return callback(err)
      }
      callback(null,'ok')
    })
  }
  
}

module.exports = {
  findOne,
  register
}


