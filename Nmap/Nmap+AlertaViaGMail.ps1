echo ""
echo                                                "################ Script Nmap +Alerta Via GMail ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 07/02/2020 ################"
echo ""
echo ""
echo ""


############################################################ DECLARANDO VARIAVEL #######################################################################
$DMY = Get-Date -uformat "%d-%m-%Y" 
$DIR = New-Item -Path C:\PortScanServer\$DMY -ItemType Directory
$List = Get-Content -Path C:\PortScanServer\IPs.txt 

$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Login = "Informar_aqui_o_e-mail_remetente"
$Password = "Senha_do_e-mail_remetente"
$to = "e-mail_destinatario"


###################################################### EXECUTANDO NMAP ######################################################################

foreach ($IP in $List) 

{ 
    nmap -v $IP >> $DIR\$IP.txt
        
}

###################################################### COMPACTANDO RESULTADO ######################################################################

Add-Type -Assembly "System.IO.Compression.FileSystem"
[System.IO.Compression.ZipFile]::CreateFromDirectory("$DIR\", "C:\PortScanServer\ResultPortScanServer_$DMY.zip")

rm C:\PortScanServer\$DMY -Recurse 

###################################################### ENVIANDO RESULTADO POR E-MAIL ##############################################################

$subject = "PortScan Server - $DMY"
$body = "Bom dia Srs,

O PortScan dos Servidores abaixo, foram realizados com sucesso: 

$List 

*** Este e-mail foi enviado automaticamente através de Script PowerShell ***.

Att,
Suporte"


$attachment = "C:\PortScanServer\ResultPortScanServer_$DMY.zip"
$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.from = $Login
$message.to.add($to)
#$message.cc.add($cc)                                                ####### <- <- DESCOMENTE PARA PARA DESTINATARIO EM COPIA ######
#$message.cc.add($bcc)                                               ####### <- <- DESCOMENTE PARA PARA DESTINATARIO EM COPIA OCULTA ######
$message.attachments.add($attachment)

$message.body = $body

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Login, $Password);
$smtp.send($message)

