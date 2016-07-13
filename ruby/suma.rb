

def suma(num1, num2 )
 puts num1.to_i + num2.to_i
end

puts "Bienvenido a la suma de dos numeros"

puts "Ingresa un numero"
num1 = gets.chomp
puts "Ingresa el segundo numero"
num2 = gets.chomp

puts "el resultado de la suma es:"
puts suma(num1,num2)