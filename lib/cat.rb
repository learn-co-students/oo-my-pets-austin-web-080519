class Cat
    attr_accessor :owner
    attr_reader :name
    attr_writer :mood 
  @@cats = []
  def initialize(name, owner, mood = "nervous" ) 
    @name = name 
    @owner = owner 
    @mood = mood
    @@cats << self 
  end
  def mood
    @mood 
      end
  def self.all 
    @@cats 
  
  end 
end 