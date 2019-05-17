class Traveler

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def airlines
        my_tickets = Ticket.all.select do | ticket |
            ticket.traveler == self
        end
        my_tickets.map do | ticket |
            ticket.airline
        end
    end

end