# Nmap + Resultado Via GMail


O script abaixo realiza um portscan dos ips listados no arquivo "IPs.txt" em seguida envia o resultado do Nmap via Gmail. 

#

1 - Abra o script e informe os valores das variaveis no bloco *DECLARANDO VARIAVEL.

    $Login = "Informar_aqui_o_e-mail_remetente"

    $Password = "Senha_do_e-mail_remetente"

    $to = "e-mail_destinatario"

2 - Cria um diretório no C:\ chamado "PortScanServer"

    C:\PortScanServer

3 - Adicione o arquivo "IPs.txt" no diretorio "PortScanServer"  

    C:\PortScanServer\IPs.txt

4 - Adicione no arquivo "IPs.txt" os ips que deseja scanear ( um embaixo do outro, sem espaço ) 
    
    Ex.:
    192.168.1.10
    192.168.1.20
    192.168.1.30
    
5 - Instale o Nmap no Servidor que irá realizar o Scan de portas

    https://nmap.org/download.html

6 - Crie no Windows Task Scheduler uma tarefa para executar o script.

7 - Habilite no GMail a opção "app menos seguros" através do link abaixo:

    https://myaccount.google.com/security

#
⭐⭐⭐ OBS.: É necessario acessar GMail que enviará o resultado uma unica vez no servidor que ira excecutar o script. Recebera um "Alerta de segurança" informando "Novo dispositivo conectado", confirme essa verificaça e pronto. ⭐⭐⭐
#
 
*Pronto agora o script ira enviar o resultado via e-mail!
#
🖥️ Acesse o Blog e veja o passo a passo: 
https://acesso8.blogspot.com/
