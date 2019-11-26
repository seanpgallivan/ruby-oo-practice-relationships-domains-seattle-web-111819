class Project

    @@all = []

    attr_reader :name, :goal, :creator

    def initialize(name, goal, creator)
        @name = name
        @goal = goal
        @creator = creator
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select {|pledge| pledge.project == self}
    end

    def backers
        pledges.map {|pledge| pledge.user}.uniq
    end

    def self.no_pledges
        @@all.select {|project| project.pledges.count == 0}
    end

    def raised
        pledges.reduce(0) {|sum, pledge| sum + pledge.amount}
    end

    def self.above_goal
        @@all.select {|project| project.raised >= project.goal}
    end

    def self.most_backers
        @@all.max_by {|project| project.backers.count}
    end

end