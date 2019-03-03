class Pirate
  @@all = []
  attr_accessor :name, :weight, :height
  def initialize(name, weight, height)
    @name, @weight, @height = name, weight, height
    @@all << self
  end
  def self.all
    @@all
  end
end
