class User

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select {|pledge| pledge.user == self}
    end

    def projects
        pledges.map {|pledge| pledge.project}.uniq
    end

    def self.highest_pledge
        Pledge.all.max_by {|pledge| pledge.amount}.user
    end

    def self.multi_pledger
        @@all.select {|user| user.projects.count > 1}
    end

    def self.project_creator
        Project.all.map {|project| project.creator}.uniq
    end

end