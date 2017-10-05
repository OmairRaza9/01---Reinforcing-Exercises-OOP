class Location

  def initialize(name)
    @name = name
  end
end
  ##not sure how to do this part
  #Create a Trip class with an array of Location instances (called stops or destinations or something similar)
# Define a method that lets you add locations to the trip's list of destinations.
class Trip < Location
  @@locations =[]
  def initialize()

  end

  def new_stop(city)
    @@locations << Location.new(city)
  end
  #Make several instances of Locations and add them to an instance of Trip.

  def itenerary()

    puts 'Start of trip'
    @@locations.each_cons(2) do |trip|
      puts trip[0].name
    #  puts 'Route will be #{city} to #{city}'
    end
    puts "end of trip."
  end
end

my_trip= Trip.new()
my_trip.new_stop("Hamilton")
my_trip.new_stop("Chicago")
my_trip.new_stop("Houston")
my_trip.new_stop("NY")
my_trip.new_stop("Grose Morne")
my_trip.new_stop("Bamf")

my_trip.itenerary()
