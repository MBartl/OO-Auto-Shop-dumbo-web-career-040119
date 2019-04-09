require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

matt = CarOwner.new("Matt")
pete = CarOwner.new("Pete")
ernie = CarOwner.new("Ernie")

mike = Mechanic.new("Mike", "Muscle")
jan = Mechanic.new("Jan", "Luxury")

car1 = Car.new("Chevy", "2002", "Muscle", matt, mike)
car2 = Car.new("Honda", "1986", "Muscle", matt, mike)
car3 = Car.new("Toyota", "2016", "Luxury", matt, jan)
car4 = Car.new("Chevy", "2007", "Luxury", matt, jan)
car5 = Car.new("Honda", "2014", "Muscle", pete, mike)
car6 = Car.new("Toyota", "2019", "Luxury", pete, jan)
car7 = Car.new("Mitsubishi", "2007", "Muscle", ernie, mike)

binding.pry
