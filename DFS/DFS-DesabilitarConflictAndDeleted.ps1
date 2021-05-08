echo ""
echo                                        "################ Script DFS - Desabilitar Conflict And Deleted ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 22/10/2020 ################"
echo ""
echo ""


Set-DfsrMembership -GroupName * -FolderName * -ComputerName "SITES-DALLAS","SITES-WDC04" -RemoveDeletedFiles $True -Force

