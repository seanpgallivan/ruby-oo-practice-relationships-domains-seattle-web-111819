class Ingredient

    @@all = []
 
    # should return a dessert object for that ingredient
    # should return the bakery object for the bakery that uses that ingredient
    attr_reader :name, :dessert, :bakery, :calorie_count

    def initialize(name, dessert, bakery, calorie_count)
        @name = name
        @dessert = dessert
        @bakery = bakery
        @calorie_count = calorie_count
        @@all << self
    end

    #should return an array of all ingredients
    def self.all
        @@all
    end

    # should take a string argument return an array of all ingredients that include that string in their name
    def self.find_all_by_name(ingredient)
        # should take a string argument return an array of all ingredients that include that string in their name
        # self.find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
        # make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
        @@all.select {|ingred| ingred.include?(ingredient)}
    end

end
