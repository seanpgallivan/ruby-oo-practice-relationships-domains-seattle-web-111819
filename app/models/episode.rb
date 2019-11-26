class Episode

    @@all = []

    attr_reader :title, :show

    def initialize(title, show)
        @title = title
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Performance.all.select {|perf| perf.video = self}
    end

    def actors
        characters.map {|character| character.actor}
    end

end