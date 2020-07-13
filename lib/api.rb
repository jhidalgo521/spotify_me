class API
    require 'rspotify'
    RSpotify.authenticate("c554aa9e79d5480fa5e999788429699c", "e0a80507585e40e68b9df069b8deb60a")
    
    def artists(artist_name="The Weeknd")

        artists = RSpotify::Artist.search(artist_name).first.albums.first.tracks
        artists.collect do |artist| 
           puts artist.name
        end
        #puts artists

    end









end 

