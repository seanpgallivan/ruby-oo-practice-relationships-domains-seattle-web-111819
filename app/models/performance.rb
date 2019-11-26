class Performance

    @@all = []

    attr_reader :character, :video

    def initialize(character, video)
        @character = character
        @video = video
        @@all << self
    end

    def self.all
        @@all
    end

end