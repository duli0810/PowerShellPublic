echo ""
echo                                     "################ Script DFS - Limpar Diretorio Conflict And Deleted ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 22/10/2020 ################"
echo ""
echo ""

<#

💻💻💻 Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/ 💻💻💻

Este comando irá limpar os arquivos em conflito noDiretorio Conflict And Deleted ; 

Ref.: https://docs.microsoft.com/en-us/archive/blogs/askds/manually-clearing-the-conflictanddeleted-folder-in-dfsr
      
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='[Replicated Folder Guid]'" call cleanupconflictdirectory

#>

Ex.:

WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='91152824-F11B-4D24-9CF4-03AB7AB7F771'" call cleanupconflictdirectory
