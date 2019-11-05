require 'bundler/setup'
Bundler.require
require_all 'app'


kyle = Passenger.new("Kyle")
sara = Passenger.new("Sara")


juan = Driver.new("Juan")
jose = Driver.new("Jose")
jorge = Driver.new("Jorge")
peter = Driver.new("Peter")

Ride.new(kyle, juan, 10)
Ride.new(kyle, jose, 15)
Ride.new(kyle, juan, 95)
Ride.new(sara, peter, 99)



binding.pry
0