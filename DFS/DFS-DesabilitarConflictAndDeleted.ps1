echo ""
echo                                        "################ Script DFS - Desabilitar Conflict And Deleted ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 22/10/2020 ################"
echo ""
echo ""

<#

💻💻💻 Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/ 💻💻💻

O script que Desabilitar Conflict And Deleted

#>

Set-DfsrMembership -GroupName * -FolderName * -ComputerName "<NomedoServidor1>","<NomedoServidor2>" -RemoveDeletedFiles $True -Force

