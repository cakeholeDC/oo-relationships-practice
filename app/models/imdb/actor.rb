class Actor

	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all		
	end

	def find_characters
		Character.all.select do |character|
			character.actor == self
		end
	end

	def self.find_actor(actor_name)
		Actor.all.find do |actor|
			actor.name.downcase == actor_name.downcase
		end
	end

	def self.most_characters
		actor_hash = {}

		Actor.all.each do |actor|
			actor_hash[actor] = actor.find_characters.count
		end

		num_characters = actor_hash.sort_by do |actor, num_characters|
			num_characters
		end

		num_characters.last[0]
	end
end