puts 'Defina um número para contagem regressiva: '
number = gets.chomp.to_i

if number.is_a?(Integer) && number > 0o0
  number.downto(0) do |i|
    puts ('%02d' % i).to_s
    sleep 1
  end
  puts 'KABUM'
else
  puts 'Entrada Inválida'
end
