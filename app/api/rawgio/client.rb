require 'httparty'

module Rawgio
    class Client
        # include HttpStatusCodes
        # include ApiExceptions

        include HTTParty
        base_uri 'https://api.rawg.io/api/'

        def initialize(key)
            @options = { query: { key: key } }
        end

        def platforms
            self.class.get("/platforms", @options)
        end

        def platform(id)
            self.class.get("/platforms/#{id}", @options)
        end

        def games
            self.class.get("/games", @options)
        end

        def game(id)
            self.class.get("/games/#{id}", @options)
        end

        def genres
            self.class.get("/genres", @options)
        end

        def genre(id)
            self.class.get("/genres/#{id}", @options)
        end

        def developers
            self.class.get("/developers", @options)
        end

        def developer(id)
            self.class.get("/developers/#{id}", @options)
        end

        def publishers
            self.class.get("/publishers", @options)
        end

        def publisher(id)
            self.class.get("/publishers/#{id}", @options)
        end

        def stores
            self.class.get("/stores", @options)
        end

        def store(id)
            self.class.get("/stores/#{id}", @options)
        end

        def creators
            self.class.get("/creators", @options)
        end

        def creator(id)
            self.class.get("/creators/#{id}", @options)
        end

        def tags
            self.class.get("/tags", @options)
        end

        def tag(id)
            self.class.get("/tags/#{id}", @options)
        end

        def games_by_platform(id)
            self.class.get("/platforms/#{id}/games", @options)
        end

        def games_by_genre(id)
            self.class.get("/genres/#{id}/games", @options)
        end

        def games_by_developer(id)
            self.class.get("/developers/#{id}/games", @options)
        end

        def games_by_publisher(id)
            self.class.get("/publishers/#{id}/games", @options)
        end

        # and a lot more...
    end
end