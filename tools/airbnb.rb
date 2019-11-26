require_relative '../config/environment.rb'
require 'pry'

g1 = Guest.new("name1")
g2 = Guest.new("name2")
g3 = Guest.new("name3")
g4 = Guest.new("name4")
g5 = Guest.new("name5")

l1 = Listing.new("city1")
l2 = Listing.new("city2")
l3 = Listing.new("city3")
l4 = Listing.new("city4")
l5 = Listing.new("city5")

t1 = Trip.new(l1, g5)
t2 = Trip.new(l2, g4)
t3 = Trip.new(l3, g3)
t4 = Trip.new(l4, g4)
t5 = Trip.new(l5, g2)
t6 = Trip.new(l1, g1)
t7 = Trip.new(l2, g5)
t8 = Trip.new(l3, g5)
t9 = Trip.new(l1, g3)
t10 = Trip.new(l1, g2)
t11 = Trip.new(l5, g4)
t12 = Trip.new(l3, g4)
t13 = Trip.new(l2, g2)
t14 = Trip.new(l2, g1)
t15 = Trip.new(l1, g5)

def mytests
    puts "\e[32m Guest \e[0mmethods: \e[33m#{Guest.instance_methods(false)}\e[0m & \e[34m#{Guest.methods(false)}\e[0m"
    puts "\e[32m Listing \e[0mmethods: \e[33m#{Listing.instance_methods(false)}\e[0m & \e[34m#{Listing.methods(false)}\e[0m"
    puts "\e[32m Trip \e[0mmethods: \e[33m#{Trip.instance_methods(false)}\e[0m & \e[34m#{Trip.methods(false)}\e[0m"
end
mytests

binding.pry
"Done!"