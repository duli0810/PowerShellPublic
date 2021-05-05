echo ""
echo                                              "################ Script - Criar Senha Criptografada  ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 14/04/2021 ################"
echo ""
echo ""
echo ""
<#

O script abaixo cria uma senha Criptografada

IMPORTANTE: Em senha ultilizada em scripts para acesso a servidores, é nescessario criar a senha no servidor e no perfil que realizará o acesso, ou seja, "rodar" esse script no servidor de origem, pois a senha fica atrelada ao host, como meio de seguraça;  

#>
######################################################### DECLARANDO VARIAVEL ############################################################################

#### INFORMAR ONDE DESEJA SALVA A CHAVE 

$DIR = Read-Host -Prompt "Digite a Path do DIRETORIO onde deseja salva sua Chave - (Ex.: C:\)"
echo ""
#### INFORMAR O NOME DA SUA CHAVE

$KEY = Read-Host -Prompt "Digite um NOME para sua Chave"
echo ""
############################################################ CRIANDO A SENHA CRIPTOGRAFADA ###############################################################

Read-Host -Prompt "Digite sua Senha" -AsSecureString | ConvertFrom-SecureString | Out-File "$DIR\$KEY.key"
echo ""
Write-Host Parabens!!! Sua Senha Criptografada foi criada com Sucesso -ForegroundColor Yellow
echo ""