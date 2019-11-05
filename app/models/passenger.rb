class Passenger

	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def rides
		Ride.all.select do |ride|
			ride.passenger == self
		end
	end

	def count_rides
		self.rides.count
	end

	def drivers
		drivers = self.rides.map do |ride|
			ride.driver
		end
		drivers.uniq
	end

	def total_distance
		self.rides.sum do |ride|
			ride.distance
		end
	end

	def self.premium_members
		Passenger.all.select do |passenger|
			passenger.total_distance > 100
		end
	end


end