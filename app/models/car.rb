class Car

  attr_reader :make, :model, :classification, :name, :mechanic

  @@all = []

  def initialize(make, model, classification, name, mechanic)
    @make = make
    @model = model
    @classification = classification
    @name = name
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map(&:classification).uniq
  end

  def experts
    Mechanic.all.select {|mech| mech.specialty == self.classification}
  end

end
