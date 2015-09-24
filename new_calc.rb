puts "Привет, что вы хотите вычислить?
1.периметр
2.площадь"
choice = gets.chomp.to_i
if choice == 1
	puts "Вычисляем периметр
	длина стороны а?"
a = gets.chomp.to_i
puts "Длина стороны б?"
b = gets.chomp.to_i 
puts "Периметр равен " "#{2 * a + 2 * b}"
else 
	puts "Привет, давай вычислим площадь прямоугольника"

puts "Введи длину а"
a = gets.chomp.to_i
puts "Введи высоту b"
b = gets.chomp.to_i 


puts "Площадь равна " "#{a * b}"
end

