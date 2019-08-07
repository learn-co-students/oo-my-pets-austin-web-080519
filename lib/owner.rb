require_relative("cat")
require_relative("dog")

class Owner
  # code goes here
  attr_reader :name, :species

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end

  def sell_pets
    Cat.all.map do |cat|
      cat.mood = 'nervous'
      cat.owner = nil
    end
    Dog.all.map do |dog|
      dog.mood = 'nervous'
      dog.owner = nil
    end
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all 
    @@all_owners
  end

  def self.count
    @@all_owners.length
  end

  def self.reset_all
    @@all_owners.clear
  end

  def cats 
    my_cats = Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    my_dogs = Dog.all.select {|cat| cat.owner == self}
  end

  def walk_dogs
    Dog.all.map do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    Cat.all.map do |cat|
      cat.mood = 'happy'
    end
  end

  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end


end