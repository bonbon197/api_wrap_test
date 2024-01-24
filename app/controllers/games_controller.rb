class GamesController < ApplicationController

    KEY = '24215d80dce54b2b9daae72a576515bf'
    # key should have been in the env var but I couldn't be bothered

    def index
        api = Rawgio::Client.new(KEY)
        @games = api.games
        @game = api.game('blue-archive')

        # return me a json response
        render json: @game
    end
    
end
