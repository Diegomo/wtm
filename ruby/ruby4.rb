puts "ingrese su primer numero"
num1 = gets.chomp

puts "ingrese su segundo numero"
num2 = gets.chomp

palabras = num1.split("")

def count_matches(palabras , num2)
   i=0
   palabras.each do |palabras|
       if num2 == palabras
           i+=1
       end
   end
   print "El numero que selecciono es ",num2," y se reṕite : ", i , " veces"
end

print count_matches(palabras, num2)