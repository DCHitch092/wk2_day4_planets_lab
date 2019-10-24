class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map { |planet| p planet.name }
  end

 def get_planet_by_name(planet)
   @planets.find { |planet| planet.name == "Mars"}
 end

 def get_largest_planet
   @planets.max_by { | planet | planet.diameter }
 end

 def get_smallest_planet
   @planets.min_by { | planet | planet.diameter }
 end

 def get_planets_with_no_moons
   @planets.find_all { |planet| planet.number_of_moons == 0}
 end

 def get_planets_with_more_moons(num)
   result = @planets.find_all { |planet| planet.number_of_moons > num }
   result.map { |result| p result.name }

 end

 def get_number_of_planets_closer_than(num)
   result = @planets.find_all { |planet| planet.distance_from_sun < num }
   result.length()
 end

 def get_total_number_of_moons
   @planets.reduce(0) { |list, planet| list + planet.number_of_moons}
 end

 def get_planet_names_sorted_by_increasing_distance_from_sun
  result = @planets.sort_by { |planet| planet.distance_from_sun}
  result.map { |result| result.name }

 end

 def get_planet_names_sorted_by_size_decreasing
   result = @plants.sort_by { |planet| planet.diameter}
   result.reverse.map { |result| result.name}

   # result = @planets.sort_by { |planet| planet.diameter}.reverse!
   # result.map { |result| result.name}

 end

 #   @planets.find_all do | planet|
 #     planet.number_of_moons >= 4
 #   end
 #   print planet.name
 # end

end
