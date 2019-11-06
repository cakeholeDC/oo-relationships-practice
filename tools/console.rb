require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# # ---- IMDB Tests ------- 
# moo = Actor.new("Moo")
# luke = Actor.new("Luke Skywalker")
# keanu = Actor.new("Keanu Reeves")
# chevy = Actor.new("Chevy Chase")

# moo_cat = Character.new("Moo Cat", moo)
# clark_griswold = Character.new("Clark Griswold", chevy)
# fletch = Character.new("Fletch", chevy)
# luke_skywalker = Character.new("Luke Skywalker", luke)
# ted = Character.new("Ted", keanu)
# bill = Character.new("Bill", moo)

# fletch_tv = Show.new("Fletch")

# ted.add_movie("Bill and Ted's Excellent Adventure")
# bill.add_movie("Bill and Ted's Excellent Adventure")

# luke_skywalker.add_movie("Star Wars: Episode 1")
# luke_skywalker.add_movie("Star Wars: Episode 2")
# luke_skywalker.add_movie("Star Wars: Episode 3")
# luke_skywalker.add_movie("Star Wars: Epsiode 4")
# luke_skywalker.add_movie("Star Wars: Episode 5")

# clark_griswold.add_movie("Christmas Vacation")
# moo_cat.add_movie("Christmas Vacation")
# fletch.add_movie("Christmas Vacation")
# ted.add_movie("Christmas Vacation")
# bill.add_movie("Christmas Vacation")

# clark_griswold.add_movie("Vegas Vacation")
# clark_griswold.add_movie("Vacation")
# fletch.add_movie("Fletch")



# --- LYFT TESTS ---
kyle = Passenger.new("Kyle")
sara = Passenger.new("Sara")

juan = Driver.new("Juan")
jose = Driver.new("Jose")
jorge = Driver.new("Jorge")
peter = Driver.new("Peter")

home = Ride.new(kyle, juan, 10)
Ride.new(kyle, jose, 15)
Ride.new(kyle, juan, 95)
Ride.new(sara, peter, 99)

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
# brenda = Bakery.new("Brendas")
# debbie = Bakery.new("Debbie")

# debs_cake = Dessert.new("Cake", debbie)
# brendas_cake = Dessert.new("Brendas Cake", brenda)

# egg = Ingredient.new("Eggs", 30, debs_cake)
# milk = Ingredient.new("Milk", 2, brendas_cake)
# flour = Ingredient.new("Flour", 8, debs_cake)
# milk2 = Ingredient.new("Milk", 2, debs_cake)


binding.pry
0