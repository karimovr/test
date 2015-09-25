puts "Введите первое число"
a = gets.chomp.to_i
puts "Введите необходимую математическую операцию"
c = gets.chomp
puts "Введите второе число"
b = gets.chomp.to_i
if c == "+"
	result = a + b	
elsif c == "-"
	result = a - b
elsif c == "*"
	result = a * b
elsif c == "/"
	result = a / b
else
	puts "Некорректный ввод"
end
puts "#{a} #{c} #{b} = #{result}" if result
