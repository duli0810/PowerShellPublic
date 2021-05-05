echo ""
echo                                                "################ Lista Discos Logicos  ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 05/05/2021 ################"
echo ""
echo ""
echo ""

<#

💻💻💻 Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/ 💻💻💻

O script Informa os Discos Logicos 

OBS.: Os Discos Logicos são do  TIPO 3 ( Fisicos )

#>

###################################################### Lista Discos Logicos  ##############################################################


Get-WmiObject Win32_logicaldisk -Filter "DriveType = 3" | ft 