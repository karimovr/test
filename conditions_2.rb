puts "Введите имя"
name = gets.strip
=begin
if name != '' && name.length > 2
	puts "Привет, #{name}"
else
	puts "Введите верное значение"
end
=end
if name == 'Василий' || name == 'Вася'
puts "Молодец, Вася"
else
puts "Эх..."
end 
