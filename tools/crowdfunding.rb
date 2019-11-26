require_relative '../config/environment.rb'
require 'pry'

u1 = User.new("name1")
u2 = User.new("name2")
u3 = User.new("name3")
u4 = User.new("name4")
u5 = User.new("name5")

p1 = Project.new("project1", 10000, u1)
p2 = Project.new("project2", 20000, u1)
p3 = Project.new("project3", 30000, u2)
p4 = Project.new("project4", 40000, u3)
p5 = Project.new("project5", 50000, u4)

g1 = Pledge.new(u1, p5, 100)
g2 = Pledge.new(u2, p4, 100)
g3 = Pledge.new(u3, p1, 100)
g4 = Pledge.new(u4, p4, 200)
g5 = Pledge.new(u5, p2, 200)
g6 = Pledge.new(u1, p1, 200)
g7 = Pledge.new(u2, p5, 200)
g8 = Pledge.new(u3, p5, 200)
g9 = Pledge.new(u1, p4, 300)
g10 = Pledge.new(u1, p2, 400)
g11 = Pledge.new(u5, p4, 400)
g12 = Pledge.new(u3, p4, 600)
g13 = Pledge.new(u2, p2, 700)
g14 = Pledge.new(u2, p1, 9000)
g15 = Pledge.new(u1, p5, 100900)

def mytests
    puts "\e[32m Pledge \e[0mmethods: \e[33m#{Pledge.instance_methods(false)}\e[0m & \e[34m#{Pledge.methods(false)}\e[0m"
    puts "\e[32m Project \e[0mmethods: \e[33m#{Project.instance_methods(false)}\e[0m & \e[34m#{Project.methods(false)}\e[0m"
    puts "\e[32m User \e[0mmethods: \e[33m#{User.instance_methods(false)}\e[0m & \e[34m#{User.methods(false)}\e[0m"
end
mytests

binding.pry
"Done!"