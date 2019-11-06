require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# airbnb test data ----------
# kyle = Guest.new("Kyle")
# sulli = Guest.new("Sulli")
# paul = Guest.new("Paul")
# paul2 = Guest.new("Paul")


# sherman = Listing.new("Sherman Ave", "DC")
# taylor = Listing.new("Taylor Street", "NC")
# jefferson = Listing.new("Jefferson", "NH")

# dc_trip = Trip.new(kyle, sherman)
# home = Trip.new(kyle, sherman)
# inaguration = Trip.new(paul, sherman)
# holiday = Trip.new(paul, jefferson)
# thanksgiving = Trip.new(sulli, taylor)


# --- Bakery Test Data -----
brenda = Bakery.new("Brendas")
debbie = Bakery.new("Debbie")

debs_cake = Dessert.new("Cake", debbie)
brendas_cake = Dessert.new("Brendas Cake", brenda)

egg = Ingredient.new("Eggs", 30, debs_cake)
milk = Ingredient.new("Milk", 2, brendas_cake)
flour = Ingredient.new("Flour", 8, debs_cake)
milk2 = Ingredient.new("Milk", 2, debs_cake)


binding.pry
0