dddList = { "Brasilia": 61, "Salvador": 71, "Sao paulo": 11, "Rio de Janeiro": 21, "Juiz De Fora": 32, "Campinas": 19 }

puts 'Defina um número de DDD:'
ddd = gets.chomp.to_i

def checkDDD(ddd, dddHash)
  if dddHash.has_value?(ddd)
    hashKey = dddHash.key(ddd)
    puts hashKey
  else
    puts 'DDD não cadastrado'
  end
end

checkDDD(ddd, dddList)
