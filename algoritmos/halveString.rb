class Main
  puts 'Defina a frase: '
  frase = gets.chomp

  comprimento = frase.length  # Armazenar comprimento de frase

  puts frase.slice(0..(comprimento / 2)) # Slice inicia em index=0 e continua até 1/2 do comprimento
end
