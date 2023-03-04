'use strict'
const path = require('path')
const express = require("express")
//const cors = require('cors')
const portNum = 3000

var app = express()
app.use(express.static(__dirname))
app.use(express.static(path.join(__dirname, "src")));
app.use(express.static(path.join(__dirname, "modelData")));

//default is index.html no route necessary


const server = app.listen(portNum, ()=>{
  const port = server.address().port
  console.log("server running at localhost:3000")

})

