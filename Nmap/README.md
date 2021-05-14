# Nmap + Resultado Via GMail


O script abaixo realiza um portscan do ips listado no arquivo "ip.txt" em seguida envia o resultado do Nmap via Gmail. 


1 - Abra o script e informe os valores das variaveis o no bloco *DECLARANDO VARIAVEL.

    $Login = "Informar_aqui_o_e-mail_remetente"

    $Password = "Senha_do_e-mail_remetente"

    $to = "e-mail_destinatario"

2 - Instale o Nmap no Servidor que ira realizar o Scan de portas

    https://nmap.org/download.html

3 - Crie no Windows Task Scheduler uma tarefa para executar o script.

4 - Habilite no GMail a opção "app menos seguros" através do link abaixo:

    https://myaccount.google.com/security

#
⭐⭐⭐ OBS.: É necessario acessar GMail que enviará o resultado uma unica vez no servidor que ira excecutar o script. Recebera um "Alerta de segurança" informando "Novo dispositivo conectado", confirme essa verificaça e pronto. ⭐⭐⭐
#
 
*Pronto agora o script ira enviar o resultado via e-mail!
#
🖥️ Acesse o Blog e veja o passo a passo: 
https://acesso8.blogspot.com/
