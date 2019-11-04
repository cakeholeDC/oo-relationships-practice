class Trainer
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_clients
		trainer_hash = {}

		Trainer.all.select do |trainer|
			trainer_hash[trainer] = []

			Client.all.each do |client|
				if client.trainer == trainer
					trainer_hash[trainer] << client
				end
			end
		end
	trainer_hash	
	end

	def self.most_clients
		trainer_hash = Trainer.find_clients

		trainer_hash.map do |trainer, clients|
			trainer_hash[trainer] = clients.count
		end

		output = trainer_hash.sort_by do |key, value|
			value
		end

		output.last[0]
	end

end