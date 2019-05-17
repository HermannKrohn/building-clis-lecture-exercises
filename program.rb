# Uncomment the below line after you install tty-prompt
require 'tty-prompt'
require './Traveler.rb'
require './Airline.rb'
require './Ticket.rb'

united = Airline.new('United Airline')
spirit = Airline.new('Spirit')
southwest = Airline.new('Southwest Airlines')

josh = Traveler.new('Josh')
raul = Traveler.new('Raúl')

Ticket.new(united, josh)
Ticket.new(united, raul)
Ticket.new(southwest, raul)

airline_choices = Airline.all.map do | airline |
    {
        name: airline.label,
        value: airline
    }
end

# Uncomment the below line after you install tty-prompt
prompt = TTY::Prompt.new
travellerObjectArr = []
ticketWithSelectedAirlineArr = []

airlineObject = prompt.select('Please select an airline:', airline_choices)
ticketWithSelectedAirlineArr = Ticket.select_airline(airlineObject)
ticketWithSelectedAirlineArr.each do |ticket|
    travellerObjectArr << ticket.traveler
end
# travellerObjectArr = ticketWithSelectedAirlineArr.select_travellers_in_airline
travellerObjectArr.each do |traveller|
    puts traveller.name
end