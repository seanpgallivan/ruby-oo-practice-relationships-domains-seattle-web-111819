class Dessert

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    # should return an array of all desserts
    def self.all
        @@all
    end

    # should return an array of ingredients for the dessert
    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert ==  self}
    end

    # should return the bakery object for the dessert
    def bakery
        ingredients.map {|ingredient| ingredient.bakery}.uniq
    end

    # should return a number totaling all the calories for all the ingredients included in that dessert
    def calories
        ingredients.reduce(0.0) {|sum, ingredient| sum + ingredient.calorie_count}
    end

end