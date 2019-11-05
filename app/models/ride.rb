class Ride

	attr_reader :passenger, :driver, :distance

	@@all = []

	def initialize(passenger, driver, distance)
		@passenger = passenger
		@driver = driver
		@distance = distance
		@@all << self
	end

	def self.all
		@@all
	end

	def self.total_distance
		Ride.all.sum do |ride|
			ride.distance
		end
	end

	def self.average_distance
		Ride.total_distance / Ride.all.length
	end
end