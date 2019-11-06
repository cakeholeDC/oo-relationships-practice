class Driver

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
			ride.driver == self
		end
	end

	def passengers
		self.rides.map do |ride|
			ride.passenger
		end.uniq
	end

	def count_rides
		self.rides.count
	end

	def total_distance
		self.rides.sum do |ride|
			ride.distance
		end
	end

	def self.mileage_cap(miles)
		Driver.all.select do |driver|
			driver.total_distance > miles
		end
	end


end