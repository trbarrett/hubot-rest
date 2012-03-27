Robot = require('hubot').robot()
Adapter = require('hubot').adapter()
Express = require('express')

class NurphRest extends Adapter
    run: ->
        console.log "Nurph-Rest initiating"
        @app = Express.createServer Express.logger(), Express.bodyParser()

        @app.post '/nurphbot/messsage', (req, res) =>
            console.log "Received Request" + req
            res.json({status: 'good'}

        @app.listen 3000

    send: (user, strings...) ->
        console.log "Nurph-Rest send: -> called"

    reply: (user, strings...) ->
        console.log "Nurph-Rest reply: -> called"

    topic: (user, strings...) ->
        console.log "Nurph-Rest topic: -> called"

    close: () ->
        @app
