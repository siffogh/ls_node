require! 'express'
http-port = 5000

app = express!
  ..use (req,res,next) ->
    console.log('Hello from use')
    return next!


app.get '/', (req,res,next) ->
  console.log 'hello from get 1'
  return next!

app.get '/', (req,res) ->
  console.log 'hello from get 2'
  res.send 'Hello World'


app.listen http-port, !->
  console.log "Server listening on port #http-port"
