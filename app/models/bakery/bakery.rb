class Bakery

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    # should return an array of all bakeries
    def self.all
        @@all
    end

    # should return an array of ingredients for the bakery's desserts
    def ingredients
        Ingredient.all.select {|ingredient| ingredient.bakery == self} 
    end

    # should return an array of desserts the bakery makes
    def desserts
        ingredients.map {|ingredient| ingredient.dessert}.uniq
    end

    # should return a number totaling the average number of calories for the desserts sold at this bakery
    def average_calories
        desserts.reduce(0.0) {|sum, dessert| sum + dessert.calories} / desserts.count
    end

    # should return a string of names for ingredients for the bakery
    def shopping_list
        ingredients.map {|ingredient| ingredient.name}.join(", ")
    end

end