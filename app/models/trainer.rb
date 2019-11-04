class Trainer
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def find_clients
		Client.all.select do |client|
			client.trainer == self
		end
	end

	def self.find_clients_per_trainer
		trainer_hash = {}

		Trainer.all.each do |trainer|
			trainer_hash[trainer] = trainer.find_clients	
		end

		trainer_hash	
	end

	def self.most_clients
		trainer_hash = Trainer.find_clients_per_trainer

		trainer_hash.map do |trainer, clients|
			trainer_hash[trainer] = clients.count
		end

		output = trainer_hash.sort_by do |key, value|
			value
		end

		output.last[0]
	end

end