# Objetivo: Somar os números na data de nascimento e printar o total

require 'date'

class Date
  def getUserDate
    puts 'Defina sua data de nascimento: (DD/MM/YYYY) '
    gets # Recebe a data em formato de string
  end

  def getDateObj(dateString)
    # Transforma a string passada em objeto de data
    DateTime.parse(dateString).to_date
  end

  def sumDate(dateObj)
    day = dateObj.day # armazena dia
    month = dateObj.month # armazena mês
    year = dateObj.year # armazena ano

    # Primeiro a gente soma dia + mês
    sum = day + month

    # Transforma o ano em string e depois em array
    year = year.to_s.split(//)

    # Loop no year e adiciona cada elemento ao sum
    year.each do |i|
      # Adiciona ao sum cada elemento transformando em INT
      sum += year[i].to_i
    end

    sum # Retornando SUM
  end
end

date = Date.new

# Armazena data do usuário na variável dateString
dateString = date.getUserDate

# Chama método getDateObj e passa dateString como argumento para receber um Date Obj
dateObj = date.getDateObj(dateString)

# Recebe a soma
sum = date.sumDate(dateObj)

puts('A soma é: ' + sum.to_s)
