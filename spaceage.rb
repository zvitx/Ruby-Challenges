# https://exercism.org/tracks/ruby/exercises/space-age
earthSecondsTime = 31557600.to_f #1 year in seconds in Earth

puts "Choose a planet"
puts "Mercury"
puts "Venus"
puts "Earth"
puts "Mars"
puts "Jupiter"
puts "Saturn"
puts "Uranus"
puts "Neptune"

planet = gets.chomp

# puts "What's your age (in seconds)?"
# ageInSeconds = gets.chomp.to_f
ageInSeconds = 1000000000
# puts ageInSeconds
# ageInYears = 0.to_f

PlanetAges = {
    "Mercury" => ageInSeconds / (earthSecondsTime * 0.2408467),
    "Venus" => ageInSeconds / (earthSecondsTime * 0.61519726),
    "Earth" => ageInSeconds / (earthSecondsTime),
    "Mars" => ageInSeconds / (earthSecondsTime * 1.8808158),
    "Jupiter" => ageInSeconds / (earthSecondsTime * 11.862615),
    "Saturn" => ageInSeconds / (earthSecondsTime * 	29.447498),
    "Uranus" => ageInSeconds / (earthSecondsTime * 84.016846),
    "Neptune" => ageInSeconds / (earthSecondsTime * 164.79132)
}

print PlanetAges.keys
puts
print PlanetAges.values
puts "--------------------------"
if PlanetAges.has_key?(planet)
    puts "Ok"
    print PlanetAges.keys
elsif planet == "Pluto"
    puts "Pluto is NOT a planet, try again."
else
    puts "Planet not found"
end