# variaveis
autor = ["Insider_", "Robert José Matos Montenegro"]
autor.freeze
# endvariaveis
puts "::: Escolha o que deseja :::\n"
2.times {
	puts "=========="
}

puts "(1) Calculadora"
puts "(2) Calculador de média escolar"
puts "(3) Replace em textos"
puts "(4) Sobre"
puts "(5) Fechar"

2.times {
	puts "=========="
}

option = Integer(gets.chomp)

def calculadora
	puts "Selecione a operação [+ - * /]"
	op = gets.chomp
	if op == "+"
		puts "Coloque os números abaixo:"
		num = Integer(gets.chomp)
		num2 = Integer(gets.chomp)
		result = num + num2
		puts "#{num} + #{num2} = #{result}"
	elsif op == "-"
		puts "Coloque os números abaixo:"
		num = Integer(gets.chomp)
		num2 = Integer(gets.chomp)
		result = num - num2
		puts "#{num} - #{num2} = #{result}"
	elsif op == "*"
		puts "Coloque os números abaixo:"
		num = Integer(gets.chomp)
		num2 = Integer(gets.chomp)
		result = num * num2
		puts "#{num} x #{num2} = #{result}"
	elsif op == "/"
		puts "Coloque os números abaixo:"
		num = Integer(gets.chomp)
		num2 = Integer(gets.chomp)
		result = num / num2
		puts "#{num} : #{num2} = #{result}"
	else
		puts "Esta operação não existe."
	end
end

def media
	puts "Coloque as notas abaixo:"
	nota = Float(gets.chomp)
	nota2 = Float(gets.chomp)
	nota3 = Float(gets.chomp)
	nota4 = Float(gets.chomp)
	result = (nota + nota2 + nota3 + nota4) / 4
	result.to_f.round(2)
	puts "Notas: #{nota}, #{nota2}, #{nota3}, #{nota4}"
	puts "Média: #{result}"
end

def replace
	print "Coloque um texto ao lado: "
	text = gets.chomp
	print "Escolha alguma letra (ou palavra também): "
	rtext = gets.chomp
	print "Coloque o que vai trocar: "
	n_text = gets.chomp

	text.downcase!
	rtext.downcase!
	n_text.downcase!

	if text.include? rtext
		text.gsub!(n_text, text)
		puts text
	else
		puts "Sorry bro."
	end

end

case option
	when 1
		puts calculadora
	when 2
		puts media
	when 3
		puts replace
	when 4
		puts "\nCriador do código: #{autor[0]}"
		puts "Nome real: #{autor[1]}"
	when 5
		puts "Obrigado por utilizar."
	else
		puts "Esta opção não existe."
end
