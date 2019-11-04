class Location
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_clients
		location_hash = {}

		Location.all.each do |location|

			location_hash[location] = []
			Client.all.each do |client|
				if client.location == location 
					location_hash[location] << client
				end
			end #+> array of clients at this location
		end 
		location_hash
	end

	def self.least_clients
		location_hash = Location.find_clients

		location_hash.map do |location, clients|
			location_hash[location] = clients.count
		end

		output = location_hash.sort_by do |key, value|
			value
		end

		output.first[0]
	end

end