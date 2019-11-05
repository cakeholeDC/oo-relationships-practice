require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kyle = Guest.new("Kyle")
sulli = Guest.new("Sulli")
paul = Guest.new("Paul")
paul2 = Guest.new("Paul")


sherman = Listing.new("Sherman Ave", "DC")
taylor = Listing.new("Taylor Street", "NC")
jefferson = Listing.new("Jefferson", "NH")

dc_trip = Trip.new(kyle, sherman)
home = Trip.new(kyle, sherman)
inaguration = Trip.new(paul, sherman)
holiday = Trip.new(paul, jefferson)
thanksgiving = Trip.new(sulli, taylor)


binding.pry
0