puts "Por favor, selecione uma das opções abaixo: "
puts "1. Fazer Login\n 2. Criar conta\n 3. Excluir conta "
opcaoUsuario = gets.chomp.to_i

@saldo = 1700,87

@extratoEntrada = "MOVIMENTAÇÃO FEITA NOS ÚLTIMOS 5 DIAS:\n Entrada (Seg - 04/07): --\n Entrada (Ter - 05/07): --\n Entrada (qua - 06/07): 1700,87\n Entrada (qui - 07/07): --\n Entrada (sex - 08/07): --"
@extratoSaida = "MOVIMENTAÇÃO FEITA NOS ÚLTIMOS 5 DIAS:\n Saída (Seg - 04/07): --\n Saída (Ter - 05/07): --\n Saída (qua - 06/07): 1700,87\n Saída (qui - 07/07): --\n Saída (sex - 08/07): --"

def fazerLogin
    puts "Insira seu CPF:"
    cpf = gets.chomp()
    puts "Inira sua senha:"
    cpf = gets.chomp()
    puts "Bem vindo, #{cpf}."
end

def fazerLogin
    puts "Insira seu CPF:" 
    cpf = gets.chomp()
    puts "Inira sua senha:"
    senha = gets.chomp()
    puts "Bem vindo, #{cpf}. Selecione umas das opções a seguir: "
    puts "1. Fazer um depósito\n 2. Fazer um saque\n 3. Fazer uma transferência\n 4. Ver meu saldo\n 5. Solicitar extrato\n "
    opcaoLogado = gets.chomp.to_i

    if opcaoLogado == 1
        puts "Você pode fazer um deposito utilizando nossos envelopes à direta do caixa."
    end

    if opcaoLogado == 2
        puts "Quanto você deseja sacar?"
        valorParaSacar = gets.chomp.to_i
        puts "Você quer sacar R$ #{valorParaSacar},00 certo? (1 - Sim | 2 - Não)"
        confirmaSaque = gets.chomp.to_i
   case
        when confirmaSaque == 1
            puts "Saque confirmado! Por favor, retire o valor no local indicado."
        when confirmaSaque == 2
        loop do
            puts "Quanto você deseja sacar?"
        valorParaSacar = gets.chomp.to_i
        puts "Você quer sacar R$ #{valorParaSacar},00 certo? (1 - Sim | 2 - Não)"
        confirmaSaque = gets.chomp.to_i
        end 
    end
    end

    if opcaoLogado == 3 

        puts "Algumas considerações: as transferências de segunda sexta, das 9h às 18h serão taxadas com R$5,00.\n Fora do horário e dia préviamente ditos, a taxa é de R$7,00.\n Tranferências acima de de R$1000,00 serão taxadas com R$10,00."
        puts " "
            puts "Insira CPF do titular da conta que você deseja fazer a transferência: "
            cpfDestinatario = gets.chomp()
        puts "Insira a conta do titular da conta que você deseja fazer a transferência: "
            contaDestinatario = gets.chomp.to_i
        puts "Quanto você deseja transferir?"
            valorTransferir = gets.chomp.to_i

            puts "Você transferiu R$ #{valorTransferir}, 00 para #{cpfDestinatario}."
    end
    if opcaoLogado == 4 
        puts "Seu saldo disponivel é R$ #{@saldo}"
    end

    if opcaoLogado == 5
        puts "Seu extrato(Entrada) #{@extratoEntrada}"
        puts " "
        puts "Seu extrato (saída) #{@extratoSaida}"
    end


end

def criarConta
    puts "Por favor, insira seu nome completo: "
    nomeCompleto = gets.chomp()
    puts " "
    puts "Por favor, insira seu CPF: "
    cpfNovoUsurario = gets.chomp.to_i
    puts " "
    puts "Insira sua data de nascimento: "
    dataDeNascimento = gets.chomp()
    puts " "
    puts "Defina um nome de usuário: "
    usuarioNovo = gets.chomp()
    puts " "
    puts "Agora, escolha uma senha (Utilize ao menos um número e um caractere em sua senha.):"
    senhaNovoUsuario = gets.chomp()
    puts " "
    puts "Pronto, #{nomeCompleto}! Agora você faz parte oficiamente do nosso time. "
end

def excluirConta
    puts "Poxa, que pena vê-lo partir... Me diga, qual seu CPF? (Preciso dessa informação ra excluir sua conta):"
    cpfParaExcluir = gets.chomp()
    puts ' '

    puts "Pronto, #{cpfParaExcluir}. Agora você não é mais nosso cliente."
end


case
    when opcaoUsuario == 1
        fazerLogin 
    when opcaoUsuario == 2
        criarConta
    when opcaoUsuario == 3
        excluirConta
end
