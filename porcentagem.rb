@tags = ["(1) Valor da porcentagem","(2) Fechar"]
puts "Selecione as opções:"

@tags.each { |tag|
	puts tag
}
@option = Integer(gets.chomp)

if @option == 1
	print "Coloque um número: "
	number = Float(gets.chomp)
	print "Coloque uma porcentagem: "
	porcen = Float(gets.chomp)
	valor = porcen / 100 * number
	valor.to_f.round(2)
	if porcen > 100 || porcen < 0
		puts "Irmão, a porcentagem não pode ser maior que 100 e nem menor que 0!"
	else
		puts "O valor dessa porcentagem é: #{valor}"
	end
end
