class Guest
	@@all = []

	attr_reader :name

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def trips
		Trip.all.select do |trip|
			trip.guest == self
		end
	end

	def listings
		self.trips.map do |trip|
			trip.listing
		end.uniq
	end

	def trip_count
		self.trips.count
	end

	def self.pro_traveller
		Guest.all.select do |guest|
			guest.trip_count > 1
		end
	end

	def self.find_all_by_name(name)
		Guest.all.select do |guest|
			guest.name == name
		end
	end
end