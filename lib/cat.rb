class Cat

attr_reader :name
attr_accessor :owner, :mood

@@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def buy_cat

  end

end