class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(data)
    @name = data[:name]
    @weight = data[:weight]
    @height = data[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
