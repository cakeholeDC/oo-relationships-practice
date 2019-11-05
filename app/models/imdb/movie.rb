class Movie

	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all		
	end

	def self.find_movie(movie_name)
		Movie.all.find do |movie|
			movie.name.downcase == movie_name.downcase
			# returns Movie instance
		end
	end

	def self.all_characters(movie_name)
		Character.all.select do |character|
			#select all characters where
			character.movies.include?(Movie.find_movie(movie_name))
			#Character.movies[] contains Movie instance
		end
	end

	def self.most_actors
		movie_hash = {}
		Movie.all.each do |movie|
			movie_hash[movie] = Movie.all_characters(movie.name).count
		end
		most_roles = movie_hash.sort_by do |movie, actors|
			actors
		end
		most_roles.last[0]
	end

end