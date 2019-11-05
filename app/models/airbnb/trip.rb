class Trip
	@@all = []

	attr_reader :guest, :listing, :city

	def initialize(guest, listing)
		@guest = guest
		@listing = listing
		@@all << self
	end

	def self.all
		@@all
	end

end