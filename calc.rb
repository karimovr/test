puts "Привет, как тебя зовут?"

name = gets.chomp
puts "Какой у Вас рост?"
hight = gets.chomp.to_i 
puts "Привет, #{name}!"
puts "Твой оптимальный вес #{hight - 110} кг"
