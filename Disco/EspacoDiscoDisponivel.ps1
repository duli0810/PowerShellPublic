echo ""
echo                                                "################ Espaco em Disco Disponivel  ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 05/05/2021 ################"
echo ""
echo ""
echo ""

<#

💻💻💻 Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/ 💻💻💻

O script Informa o Espaco em Disco Disponivel de acordo com o driver informado na variavel $UniDisc 

#>

###################################################### Verificando Espaco em Disco Disponivel  ##############################################################


$UniDisc ="c" # Informar Unidade de Disco ( Ex.: "C:\" )

$DiscFree=[math]::Round((Get-PSDrive $UniDisc | Select-Object -ExpandProperty Free)/1GB,2)

echo ""

Write-Host O Espaço em disco disponivel é de $DiscFree GB -ForegroundColor Yellow 