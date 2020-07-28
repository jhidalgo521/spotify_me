class Song
    attr_accessor :song_name

    @@all_songs_previewed = []

    def store_song(song_name)
        @song_name= song_name
        @@all_songs_previewed << self

    end 

    def get_song(song)
        @@all_songs_previewed[-1].song_name
    end

    def previous_songs
        
        @@all_songs_previewed.collect do |previous_song|
            previous_song.song_name
        end   
    end

end