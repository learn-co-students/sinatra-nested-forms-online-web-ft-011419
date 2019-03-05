class Ship

    attr_reader :type, :name, :booty

    @@ships = []

    def initialize(params)
        @name =params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@ships << self
    end

    def self.all
        @@ships
    end

    def self.clear
        @@ships.clear
    end

end
