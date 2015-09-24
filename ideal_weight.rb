puts "Привет, давай расчитаем твой идеальный вес по формуле Лоренца
Ты мужчина или женщина?"
sex = gets.chomp
puts "как тебя зовут?"

name = gets.chomp
puts "Какой у Вас рост?"
hight = gets.chomp.to_i 
if 	hight - 110 <= 0	
	puts " #{name} ,сначала подрасти"
elsif sex == "мужчина"
puts "Твой оптимальный вес #{hight - 100 - ((hight - 150)/2)} кг"
	
elsif sex == "женщина"
 puts "Привет, #{name}!"
puts "Твой оптимальный вес #{hight - 100 - ((hight - 150)/4)} кг"
	
end
