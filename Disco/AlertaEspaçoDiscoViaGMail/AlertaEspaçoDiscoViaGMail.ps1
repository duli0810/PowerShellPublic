echo ""
echo                                            "################ Script - Alerta Espaço em Disco via GMail  ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 10/05/2021 ################"
echo ""
echo ""
echo ""
<#
💻💻💻 Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/ 💻💻💻

O script abaixo Alerta via gmail se o Espaço em Disco é suficente ou insuficiente, de acordo com a valor aceitavel, assim definido.  

#>

######################################################### DECLARANDO VARIAVEL ############################################################################

$DMY = Get-Date -uformat "%d-%m-%Y" # Não alterar essa linha 

$UniDisc ="c" # Informar Unidade de Disco ( Ex.: "C:\" )

$DiscFree=[math]::Round((Get-PSDrive $UniDisc | Select-Object -ExpandProperty Free)/1GB,2) # Não alterar essa linha 

$LimGB = 20 # Informar valor de Espaço em disco disponivel, aceitavel em GB 

$SMTPServer = "smtp.gmail.com" # Esse é o SMTP do gmail

$SMTPPort = "587" # Essa é a SMTP Porta do gmail

$Username = "Informar_aqui_o_e-mail_remetente"

$Password = "Senha_do_e-mail_remetente"

$to = "e-mail_destinatario"

#$cc = "e-mail_destinatario_em_copia"

#$bcc = "e-mail_destinatario_oculto"

######################################################### CONDIÇAO DO ESPAÇO EM DISCO ####################################################################

if ($DiscFree -lt $LimGB) # $DiscFree menor que $LimGB
{

 ############################################################ ENVIA E-MAIL DE ALERTA ##########################################################################

$subject = "### Espaço em disco insuficiente - $DMY ###"
$body = "Bom dia Srs,

 
Espaço em disco insuficiente no dispositivo $env:computername.



*** Este e-mail foi enviado automaticamente através de Script PowerShell ***.

Att,
$Username"

#$attachment = "C:\Script\ArquivosAnexos.txt"     ####### <- <- DESCOMENTE PARA ANEXAR ARQUIVOS ######
$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.from = $username
$message.to.add($to)
#$message.cc.add($cc)                                ####### <- <- DESCOMENTE PARA PARA DESTINATARIO EM COPIA ######
#$message.cc.add($bcc)                               ####### <- <- DESCOMENTE PARA PARA DESTINATARIO EM COPIA OCULTA ######
#$message.attachments.add($attachment)               ####### <- <- DESCOMENTE PARA ANEXAR ARQUIVOS ######

$message.body = $body

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)

}
else 
{
    Write-Host "Tem espaço suficiente"
}
