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
   
    def self.select_airline(airline)
        Ticket.all.select do |ticketObject|
            ticketObject.airline == airline
        end
    end

    # def select_travellers_in_airline(airline)
    #     Ticket.select_airline.map do |ticketObject|
    #         ticketObject.traveler
    #     end
    # end
end