class GamesController < ApplicationController

    KEY = '24215d80dce54b2b9daae72a576515bf'
    # key should have been in the env var but I couldn't be bothered right now at 2am. will migrate later

    def index
        api = Rawgio::Client.new(KEY)

        if params[:slug].nil?
            @games = api.games
            render json: @games, status: :ok
        else
            @game = api.game(params[:slug])
            render json: @game, status: :ok
        end


    end
    
end
