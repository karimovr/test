puts "Привет, как тебя зовут?"

name = gets.chomp
puts "Какого года рождения?"
year = gets.chomp.to_i 
puts "Привет, #{name}!"
puts "Твой возраст #{2015 - year} лет"
