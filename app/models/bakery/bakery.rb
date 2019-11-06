##THINK OF THIS AS A SHOPPING LIST, NOT A BAKERIES PRODUCTION LINE
class Bakery 
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def desserts
		Dessert.all.select do |dessert|
			dessert.bakery == self
		end
	end

	def ingredients
		Ingredient.all.select do |ingredient|
			ingredient.dessert.bakery == self
		end
	end

	def average_calories
		total_cal = self.ingredients.sum do |ingredient|
			ingredient.calories
		end
		total_cal / self.ingredients.length
	end

	def shopping_list
		self.ingredients.each do |ingredient|
			puts ingredient.name
		end
	end
end