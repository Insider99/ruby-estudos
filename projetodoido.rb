puts "Insira os dados abaixo: "

@indice = 0
@nome = Array.new(0)
@sexo = Array.new(0)
@idade = Array.new(0)

for bitch in 1..2
	@indice += 1
	puts "Coloque o nome #{@indice} abaixo: "
	@nome.push(gets.chomp.capitalize!)
	puts "Coloque o sexo desta pessoa: "
	@sexo.push(gets.chomp)
	puts "Coloque a idade desta pessoa: "
	@idade.push(Integer(gets.chomp))
end

@media = (@idade[0] + @idade[1]) / 2
puts "Média: #{@media}\n"

if @idade[0] > @idade[1]
	puts "#{@nome[0]} do sexo #{@sexo[0]} é o mais velho."
elsif @idade[0] < @idade[1]
	puts "#{@nome[1]} do sexo #{@sexo[1]} é o mais velho."
else
	puts "Os 2 são da mesma idade"
end
