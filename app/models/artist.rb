class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    def get_genre_of_first_song
        #return the genre of the artist's first saved song
        #artist1 = Artist.where(name: 'adele')
        #artist1.songs.first.genre
        self.songs.first.genre
    end

    def song_count
        #return the number of songs associated with the artist
        # artist1 = Artist.find_by(name: "Michael Jackson")
        # artist.songs.count
        self.songs.count
    end

    def genre_count
        #return the number of genres associated with the artist
        self.genres.count
    end

end
