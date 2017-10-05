class Location

  def name()
    @name = name
  end


end

class Trip

#Create a Trip class with an array of Location instances (called stops or destinations
#or something similar). Define a method that lets you add locations to the trip's list of destinations.

  def stops(name)
    @stops = []
    @stops << Location.new(name)
    #why not Trip.new....I'm in the Trip class.
  end

  def self.start
    puts "Begin trip"
    @stops.each_with_index do |stop, i|
      if @stops[i+1] == nil
        puts "Ended Trip"
      else
      puts "Travelled from #{stop.name} to #{@stopsdestinations[i+1].name}."
    end
    end
  end
end
end

#Make several instances of Locations and add them to an instance of Trip.

omair_trip = Trip.new()
Trip.new("Houston")
Trip.new("NY")
Trip.new("Saint Johns")
Trip.new("Calgary")
Trip.new("Bamf")
