class Ship

    attr_reader :type, :name, :booty

    @@all = []

    def initialize(params)
        @name =params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@ships << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

end
