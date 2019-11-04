class Location
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
			client.location == self 
		end #+> array of clients at this location
	end

	def self.find_clients_per_location
		location_hash = {}

		Location.all.each do |location|
			location_hash[location] = location.find_clients
		end 
		
		location_hash
	end

	def self.least_clients
		location_hash = Location.find_clients_per_location

		location_hash.map do |location, clients|
			location_hash[location] = clients.count
		end

		output = location_hash.sort_by do |key, value|
			value
		end

		output.first[0]
	end

end