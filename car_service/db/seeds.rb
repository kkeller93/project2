# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all
Problem.destroy_all

engine = Problem.new(problem: "Engine", img_url: "http://bit.ly/2mH61S0")
transmission = Problem.new(problem: "Transmission", img_url: "http://bit.ly/2lkyJqB")
suspension = Problem.new(problem: "Suspension", img_url: "http://bit.ly/2mpiQEx")
electrical = Problem.new(problem: "Electrical", img_url: "http://bit.ly/2lPBuE0")
body = Problem.new(problem: "Body", img_url: "http://bit.ly/2lSvdFU")
interior = Problem.new(problem: "Interior", img_url: "http://bit.ly/2lSwSuY")
wheels = Problem.new(problem: "Wheels", img_url: "http://bit.ly/2mADLRC")
brakes = Problem.new(problem: "Brakes", img_url: "http://bit.ly/2lkfBJt")
exhaust = Problem.new(problem: "Exhaust", img_url: "http://bit.ly/2lSx7Gu")
hvac = Problem.new(problem: "HVAC", img_url: "http://bit.ly/2luQXGN")

bmw = Car.create(year: 2004, make: "BMW", model: "M3", mileage: 41341, customer: "Involved in front end collision", img_url: "http://bit.ly/2lknfU9", problem: body)
audi = Car.create(year: 2012, make: "Audi", model: "S4", mileage: 66879, customer: "Transmission shifting weird", img_url: "http://bit.ly/2lkemtW", problem: transmission)
mercedes = Car.create(year: 2006, make: "Mercedes", model: "CLK 550", mileage: 169690, customer: "Sunroof won't close", img_url: "http://bit.ly/2luZqtH", problem: electrical)
honda = Car.create(year: 2010, make: "Honda", model: "Civic", mileage: 78921, customer: "Brake caliper seized", img_url: "http://bit.ly/2m8Gd4q", problem: brakes)
toyota = Car.create(year: 1999, make: "Toyota", model: "Corolla", mileage: 100543, customer: "Exhaust leak", img_url: "http://bit.ly/2mpmcHG", problem: exhaust)
ford = Car.create(year: 2002, make: "Ford", model: "F-150", mileage: 197234, customer: "Rims badly curbed", img_url: "http://bit.ly/2luNkkm", problem: wheels)
mercury = Car.create(year: 1989, make: "Mercury", model: "Cougar", mileage: 248283, customer: "Will not start", img_url: "http://bit.ly/2lSH0nv", problem: engine)
bentley = Car.create(year: 2016, make: "Bentley", model: "Mulsanne", mileage: 1492, customer: "Trim piece broken", img_url: "http://bit.ly/2lkqwCM", problem: interior)
