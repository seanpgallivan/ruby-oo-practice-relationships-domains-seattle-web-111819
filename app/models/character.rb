class Character

    @@all = []

    attr_reader :name, :actor
    attr_accessor :movies, :shows

    def initialize(name, actor, movies=[], shows=[])
        @name = name
        @actor = actor
        @movies = movies
        @shows = shows
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        @@all.max_by {|character| character.movies.count + character.shows.count}
    end

end
