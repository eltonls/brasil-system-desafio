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

    dayArray = day.to_s.split('')
    monthArray = month.to_s.split('')
    yearArray = year.to_s.split('')

    sum = 0

    # ITERAÇÃO DE ARRAY EM CADA ITEM do ANO, gerando um array = [1,9,9,9]
    (0...4).each do |i|
      puts yearArray[i]
      sum += yearArray[i].to_i
    end

    # ITERAÇÃO DE ITENS NOS ARRAYS DE DIA E MES
    (0..2).each do |i|
      sum += monthArray[i].to_i
      sum += dayArray[i].to_i
    end

    puts("#{dayArray[0]} + #{dayArray[1]} + #{monthArray[0]} + #{monthArray[1]} + #{yearArray[0]} + #{yearArray[1]} + #{yearArray[2]} + #{yearArray[3]} = #{sum}")

    sum # Retornando SUM
  end
end

date = Date.new

# Armazena data do usuário na variável dateString
dateString = date.getUserDate

isDateRight = false

while isDateRight == false
  # Se a data passar no regex
  if dateString.match(%r{(?:(?:31(/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$})
    # Então ela é transformada em date e o código continua
    dateObj = date.getDateObj(dateString)

    # Recebe a soma
    sum = date.sumDate(dateObj)

    puts('A soma é: ' + sum.to_s)

    # Por fim isDateRight modifica parando o loop
    isDateRight = true
  else
    puts('Formatação de data errada. Tente novamente')
    dateString = date.getUserDate
  end
end
