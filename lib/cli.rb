require "tty-prompt"

class CLI   #primary job to provide user interface "gets"
    attr_reader :api

    

    def initialize
        @api = API.new
    end

    def start
        ans = "Y"
        until (ans == "n" || ans == "N") do 
            artist_name = grab_name 
            albums = get_albums(artist_name)
            selected_album = select_album(albums)
            album_tracks = get_tracks(selected_album)
            song = select_song(album_tracks)
            #play_song(song, artist_name)
            preview_song(song)
            #binding.pry
            ans = handle_loop 
        end
       
    end

    def grab_name
        puts "Welcome to SpotifyMe. Enter an artist name: \n"
        artist_name = gets 
        artist_name = artist_name.chomp
    end


    def get_tracks(album)
        @api.album_tracks(album) 

    end 

    def get_albums(artist_name)
        @api.artist_albums(artist_name)
        
    end

    def select_album(albums)
        #binding.pry
        prompt = TTY::Prompt.new
        prompt.select("Pick your artist album?", albums)

    end 

    def select_song(songs)
        prompt = TTY::Prompt.new
        prompt.select("Pick your song?", songs)
    end

    # def play_song(song, artist)
    #     system("spotify play #{song} #{artist}")
    # end

    def preview_song(song)
        song_url = @api.preview_url(song)
        puts "Want a song preview? Y or n?"
        ans = gets
        ans = ans.chomp
        if ans !=("n" || "N") 
            puts song_url
        end

    end 

    def handle_loop
        puts "Would you like to choose another song? Y or n"
        rspe = gets
        rspe = rspe.chomp

    end 

end 