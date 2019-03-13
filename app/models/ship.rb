class Ship
  attr_accessor :name, :type, :booty

  @@ships = []
  def initialize(data)
    @name = data[:name]
    @type = data[:type]
    @booty = data[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
