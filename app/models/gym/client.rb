class Client
	@@all = []

	attr_reader :name, :location
	attr_accessor :trainer

	def initialize(name, location)
		@name = name
		@location = location
		@@all << self
	end

	def self.all
		@@all
	end

	def assign_trainer(trainer)
		self.trainer = trainer
	end
end