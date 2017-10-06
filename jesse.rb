class Location

  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end
end

class Trip
  def initialize (locations)
    @locations = locations

  end

  def itenerary_print
    p "My summer was pretty wild. "
    @locations.each_cons(2) do |location|
      p "I drove from  #{location[0].get_name} to #{location[1].get_name}"
    end
    p "It was a great summer."
  end
end

toronto = Location.new("Toronto")
hamilton = Location.new("Hamilton")
bamf = Location.new("Bamf")
thun = Location.new("Thunderbay")
my_locations = []
my_locations << toronto
my_locations << hamilton
my_locations << bamf
my_locations << thun

omair_trip = Trip.new(my_locations)
#p omair_trip << my_locations

omair_trip.itenerary_print

#Define a method that lets you add locations to the trip's list of destination
