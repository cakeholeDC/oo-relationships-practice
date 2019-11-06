class Ingredient
	@@all = []

	attr_reader :name, :calories, :dessert

	def initialize(name, calories, dessert)
		@name = name
		@calories = calories
		@dessert = dessert
		@@all << self
	end

	def self.all
		@@all
	end

	def bakery
		self.dessert.bakery
	end

	def self.find_all_by_name(query)
		Ingredient.all.select do |ingredient|
			ingredient.name.downcase.include?(query.downcase)
		end
	end

end