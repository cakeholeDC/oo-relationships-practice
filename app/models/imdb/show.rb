class Show

	attr_reader :name

	@@all = []

	def initialize(name)# TODO add SEASON, EPISODE
		@name = name
		@@all << self
	end

	def self.all
		@@all		
	end

	def self.find_show(show_name)
		Show.all.find do |show|
			show.name.downcase == show_name.downcase
			# returns Show instance
		end
	end

	def on_the_big_screen
		Movie.all.select do |movie|
			movie.name.downcase == self.name.downcase
		end
	end
end