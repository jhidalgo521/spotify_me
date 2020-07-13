class API
    require 'rspotify'
    RSpotify.authenticate("c554aa9e79d5480fa5e999788429699c", "e0a80507585e40e68b9df069b8deb60a")
    # Returns artists first album track list as an array
    def album_tracks(album)
        artist_album = RSpotify::Album.search(album).first
        artist_album = artist_album.tracks
        artist_album.collect do |track| 
           track.name
        end
        # #puts artists

    end
    
    def artist_albums(artist_name="The Weeknd")
        artists = RSpotify::Artist.search(artist_name).first.albums
        artists.collect do |album|
            album.name
        end
    end

    def preview_url(song)
        artist_song = RSpotify::Track.search(song).first
        artist_song = artist_song.preview_url
    end





end 

