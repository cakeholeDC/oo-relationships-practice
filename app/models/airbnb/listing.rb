class Listing
	@@all = []

	attr_reader :name, :city

	def initialize(name, city)
		@name, @city = name, city
		@@all << self
	end

	def self.all
		@@all
	end

	def trips
		Trip.all.select do |trip|
			trip.listing == self
		end
	end

	def guests
		self.trips.map do |trip|
			trip.guest
		end.uniq
	end

	def trip_count
		self.trips.length
	end

	def self.find_all_by_city(city)
		Listing.all.select do |listing|
			listing.city == city
		end
	end

	def self.most_popular
		trip_hash = {}

		Listing.all.each do |listing|
			trip_hash[listing] = listing.trip_count
		end
		
		sorted = trip_hash.sort_by do |lising, count|
			count
		end

		sorted.last[0]
	end

end