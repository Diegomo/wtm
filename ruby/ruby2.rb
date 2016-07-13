
def saludar(nombre)
  puts "hola #{nombre}"
end

puts "ingrese su nombre "
nombre = gets.chomp

puts saludar(nombre)
