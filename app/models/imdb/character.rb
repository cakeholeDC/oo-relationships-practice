class Character

	attr_reader :name, :actor
	attr_accessor :movies, :shows

	@@all = []

	def initialize(name, actor)
		@name = name
		@actor = actor
		@movies = []
		@shows = []
		@@all << self
	end

	def self.all
		@@all
	end

	def find_movie(movie_name)
		Movie.all.find do |movie|
			movie.name == movie_name
		end
	end

	def add_movie(movie_name)
		if !self.find_movie(movie_name)
			self.movies << Movie.new(movie_name)
		else
			self.movies << self.find_movie(movie_name)
		end
	end

	def find_show(show_name)
		Show.all.find do |show|
			show.name == show_name
		end
	end

	def add_show(show_name)
		if !self.find_show(show_name)
			self.shows << Show.new(show_name)
		else
			self.movies << self.find_movie(movie_name)
		end
	end

	def self.find_actor(character_name)
		Character.all.find do |character|
			character.name == character_name
		end.actor
	end

	def self.find_character(character_name)
		Character.all.find do |character|
			character.name.downcase == character_name.downcase
		end
	end

	def self.most_appearances
		character_hash = {}

		Character.all.each do |character|
			character_hash[character] = character.movies.count
		end

		num_appearances = character_hash.sort_by do |character, appearances|
			appearances
		end
		num_appearances.last[0]
	end
end