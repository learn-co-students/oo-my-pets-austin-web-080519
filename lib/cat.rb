class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def self.all
    @@cats
  end

  def save
    @@cats << self
  end

end