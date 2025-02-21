# https://exercism.org/tracks/ruby/exercises/space-age
earth_seconds_time = 31557600.to_f #1 year in seconds in Earth

puts "Choose a planet"
puts "Mercury"
puts "Venus"
puts "Earth"
puts "Mars"
puts "Jupiter"
puts "Saturn"
puts "Uranus"
puts "Neptune"
puts "-----------------------------"

planet = gets.chomp
puts "-----------------------------"

puts "What's your age (in seconds)?"
age_in_seconds = gets.chomp.to_f

PlanetAges = {
    "Mercury" => age_in_seconds / (earth_seconds_time * 0.2408467),
    "Venus" => age_in_seconds / (earth_seconds_time * 0.61519726),
    "Earth" => age_in_seconds / (earth_seconds_time),
    "Mars" => age_in_seconds / (earth_seconds_time * 1.8808158),
    "Jupiter" => age_in_seconds / (earth_seconds_time * 11.862615),
    "Saturn" => age_in_seconds / (earth_seconds_time * 	29.447498),
    "Uranus" => age_in_seconds / (earth_seconds_time * 84.016846),
    "Neptune" => age_in_seconds / (earth_seconds_time * 164.79132)
}

puts "-----------------------------"
if PlanetAges.has_key?(planet)
    puts "Your #{planet}-age is #{PlanetAges[planet].round 2}"
elsif planet == "Pluto"
    puts "Pluto is NOT a planet, try again."
else
    puts "Planet not found"
end