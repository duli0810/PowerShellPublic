echo ""
echo                                     "################ Script DFS - Listar Replicated Folder Guid ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 22/10/2020 ################"
echo ""
echo ""
<#

Esse comando irá listar o ID da pasta replicada bem como o seu nome conforme pode ser visto na imagem abaixo; 

Ref.: https://docs.microsoft.com/en-us/archive/blogs/askds/manually-clearing-the-conflictanddeleted-folder-in-dfsr
      http://williansco.blogspot.com/2016/10/pasta-conflictanddeleted-excedeu-seu.html
#>

WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderconfig get replicatedfolderguid,replicatedfoldername
