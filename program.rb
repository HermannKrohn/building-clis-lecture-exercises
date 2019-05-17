# Uncomment the below line after you install tty-prompt
# require 'tty-prompt'
require './Traveler.rb'
require './Airline.rb'
require './Ticket.rb'

united = Airline.new('United Airline')
spirit = Airline.new('Spirit')
southwest = Airline.new('Southwest Airlines')

josh = Traveler.new('Josh')
raul = Traveler.new('Raúl')

Ticket.new(josh, united)
Ticket.new(raul, united)
Ticket.new(raul, southwest)

airline_choices = Airline.all.map do | airline |
    {
        value: airline,
        name: airline.label
    }
end

# Uncomment the below line after you install tty-prompt
# prompt = TTY::Prompt.new