class CLI   #primary job to provide user interface "gets"
    attr_reader :api

    def initialize
        @api = API.new
    end

    def start
        artist_name = grab_name 
        get_tracks(artist_name)
    end

    def grab_name
        puts "Whats good, welcome to SpotifyMe. Enter an artist name ... or default to my personal fave: \n"
        artist_name = gets 
        return artist_name
    end


    def get_tracks(artist_name)
        @api.artists(artist_name) 

    end 

end 