class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average
    Car.all.length/self.all.length.to_f
  end

  def cars
    Car.all.select {|car| car.name == self}
  end

  def mechanics
    self.cars.map(&:mechanic).uniq
  end

end
