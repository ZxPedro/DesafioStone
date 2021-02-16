items = Array.new
emails = Array.new
pessoas = Array.new
soma = 0

loop do
    puts "Digite 1 para adicionar item na lista ou 0 para sair"
    opcao = gets.chomp.to_i
break if (opcao == 0)    
    puts "Digite o nome do Item: "
    item = gets.chomp.to_s
    puts "Digite a quantidade do Item: "
    quantidade = gets.chomp.to_i
    puts "Digite o valor do Item: "
    value = gets.chomp.to_i

    items.push({
        'item' => item,
        'qtd' => quantidade,
        'value' => value
    })
    system "clear"
end
system "clear"
loop do
    puts "Digite 1 para adicionar email na lista ou 0 para sair"
    opcao = gets.chomp.to_i
break if (opcao == 0)    
    puts "Digite o email: "
    email = gets.chomp.to_s
    
    emails.push(email)
    system "clear"
end
system "clear"


items.each do |item|
    soma += (item['qtd'] * item['value'])
end    

valorPessoa = soma / emails.size
totalRestante = soma - (valorPessoa * emails.size)

emails.each_with_index do |email, i|
    pessoas.push({
        'email' => email,
        'valor' => valorPessoa
    })

    if (totalRestante > 0)
        pessoas[i]['valor'] += 1
        totalRestante -= 1
    end
end   

pessoas.each do |pessoa|
    puts "#{pessoa['email']} pagará #{pessoa['valor']}"
end