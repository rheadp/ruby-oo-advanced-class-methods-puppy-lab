class Dog
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    self.save

  end

  def self.all
    @@all #returns all dog instances
  end
  
  def self.clear_all
    @@all = []
  end

  def self.print_all
    @@all.each do |dog|
      puts dog.name #class method that puts out the name of each dog to the terminal 
    end
  end
  
  def save
    @@all << self
  end


end