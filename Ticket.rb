class Ticket 

    @@all = []

    def self.all
        @@all
    end

    def initialize(airline, traveler)
        @airline = airline
        @traveler = traveler
        @@all << self
    end

    def airline
        @airline
    end
    
    def traveler
        @traveler
    end
   
end