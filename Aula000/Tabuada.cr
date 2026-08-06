puts "=================================="
puts "       GERADOR DE TABUADA"
puts "=================================="

print "Digite um número entre 1 e 100000000: "

entrada = gets

# Verifica se alguma informação foi digitada
if entrada.nil?
  puts "Erro: nenhuma informação foi digitada."
  exit
end

# Tenta transformar o texto digitado em número inteiro
numero = entrada.to_i?

# Verifica se o usuário digitou realmente um número
if numero.nil?
  puts "Erro: você deve digitar apenas números inteiros."
  exit
end

# Verifica se o número está dentro do limite permitido
if numero < 1 || numero > 100_000_000
  puts "Erro: o número deve estar entre 1 e 100000000."
  exit
end

puts
puts "Tabuada do #{numero}:"
puts "----------------------------------"

(1..10).each do |multiplicador|
  resultado = numero * multiplicador
  puts "#{numero} x #{multiplicador} = #{resultado}"
end

puts "----------------------------------"
puts "Fim da tabuada!"