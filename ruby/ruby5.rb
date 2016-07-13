
def fizz_buzz(n)

  if n % 3 == 0 && n % 5 == 0
    puts "fizzbuzz"

  elsif n % 3 == 0
    puts "fizz"

  elsif n % 5 == 0
    puts  "buzz"

  else
    puts "no es multiplo de nada"
  end
end

puts "ingrese un numero"
n = gets.chomp.to_i

puts fizz_buzz(n)

