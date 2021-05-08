echo ""
echo                                     "################ Script DFS - Listar Replicated Folder Guid ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 22/10/2020 ################"
echo ""
echo ""
<#

💻💻💻 Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/ 💻💻💻

Esse comando irá listar o ID da pasta replicada bem como o seu nome conforme pode ser visto na imagem abaixo; 

Ref.: https://docs.microsoft.com/en-us/archive/blogs/askds/manually-clearing-the-conflictanddeleted-folder-in-dfsr
      
#>

WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderconfig get replicatedfolderguid,replicatedfoldername
