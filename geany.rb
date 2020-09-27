# caso eu esqueça, gsub! serve para trocar globalmente

puts "::Substituidor de letras::"
print "Entre com uma palavra: "
entrada = gets.chomp
print "Entre com a letra que deseja trocar: "
letra = gets.chomp
print "Entre com a letra para trocar: "
tletra = gets.chomp

entrada.downcase!
letra.downcase!
tletra.downcase!

if entrada.include? letra
	entrada.gsub!(letra, tletra)
	puts "Sua palavra trocada: #{entrada}"
elsif !entrada.include? letra
	puts "Poxa vida mano, não tem nenhuma letra/número entre os dois!"
else
	puts "Erro?"
end
