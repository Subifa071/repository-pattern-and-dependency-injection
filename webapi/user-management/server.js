const express = require('express')
const dotenv = require('dotenv')
const morgan = require('morgan')
const body_parser = require('body-parser')
const path = require('path')
const mime = require('mime')

const app = express()

dotenv.config({ path: '.env' })
const port = process.env.port || 8080

// mime.define({
//   'text/css': ['css'],
// })

//log requests
app.use(morgan('tiny'))

// parse requests to body-parser
app.use(body_parser.urlencoded({ extended: true }))

// set view engine
app.set('view engine', 'ejs')
// app.set("views",path.resolve(__dirname,"views/ejs"))

// load assets
app.use('/css', express.static(path.resolve(__dirname, 'assets/css')))
app.use('/img', express.static(path.resolve(__dirname, 'assets/img')))
app.use('/js', express.static(path.resolve(__dirname, 'assets/js')))

app.get('/', (req, res) => {
  // res.send('Crud App')
  res.render('index')
})
app.get('/add-user', (req, res) => {
  // res.send('Crud App')
  res.render('add_user')
})

app.listen(port, () =>
  console.log(`Server is running on http://localhost:${port}`)
)
