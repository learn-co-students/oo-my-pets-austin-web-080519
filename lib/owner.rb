require 'pry'

class Owner
  # code goes here
  attr_accessor 
  attr_reader :name, :species

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    all_cats = Cat.all
    all_cats.select {|cat| cat.owner == self}
  end

  def dogs
    all_dogs = Dog.all
    all_dogs.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
   Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end
end