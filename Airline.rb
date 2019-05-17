class Airline 

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def travelers
        my_tickets = Ticket.all.select do | ticket |
            ticket.airline == self
        end
        my_tickets.map do | ticket |
            ticket.traveler
        end
    end

end