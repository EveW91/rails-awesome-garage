puts "Cleaning DB"
Car.destroy_all
Owner.destroy_all

puts "Creating Cars and Owners"

owner_1 = Owner.create(nickname: "Fred")
owner_2 = Owner.create(nickname: "George")
owner_3 = Owner.create(nickname: "Ron")

car_1 = Car.create(brand: "Tesla", model: "S", year: 2016, fuel: "Electric", owner: owner_1)
car_2 = Car.create(brand: "BMW", model: "1 Series", year: 2008, fuel: "Deisel", owner: owner_2)
car_3 = Car.create(brand: "Audi", model: "A3", year: 2011, fuel: "Diesel", owner: owner_3)
