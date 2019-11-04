require_relative '../../config/environment.rb'


wework = Location.new("We Work")
whitehouse = Location.new("White House")

trevor = Client.new("Trevor", wework)
kyle = Client.new("Kyle", wework)
sara = Client.new("Sara", wework)
mike = Client.new("Mike", wework)
matt = Client.new("Matt", wework)



paul = Trainer.new("Paul")
steve = Trainer.new("Steve")
max = Trainer.new("Max")
kevin = Trainer.new("kevin")
joe = Trainer.new("Joe")

kyle.assign_trainer(paul)
trevor.assign_trainer(paul)
sara.assign_trainer(steve)
mike.assign_trainer(steve)
matt.assign_trainer(steve)

binding.pry
0