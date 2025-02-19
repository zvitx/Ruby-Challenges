# https://exercism.org/tracks/ruby/exercises/space-age
earthSecondsTime = 31557600.to_f #1 year in seconds in Earth

puts "Choose a planet"
puts "1. Mercury"
puts "2. Venus"
puts "3. Earth"
puts "4. Mars"
puts "5. Jupiter"
puts "6. Saturn"
puts "7. Uranus"
puts "8. Neptune"

choice = gets.chomp.to_i

puts "What's your age (in seconds)?"
ageInSeconds = gets.chomp.to_f

puts ageInSeconds
ageInYears = 0.to_f

case choice
when 1
    ageInYears = ageInSeconds / (earthSecondsTime * 0.2408467)
    puts "Your Mercury age is #{ageInYears}"
end