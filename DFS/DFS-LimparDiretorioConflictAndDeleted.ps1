echo ""
echo                                     "################ Script DFS - Limpar Diretorio Conflict And Deleted ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 22/10/2020 ################"
echo ""
echo ""

<#

Este comando irá limpar os arquivos em conflito noDiretorio Conflict And Deleted ; 

Ref.: https://docs.microsoft.com/en-us/archive/blogs/askds/manually-clearing-the-conflictanddeleted-folder-in-dfsr
      http://williansco.blogspot.com/2016/10/pasta-conflictanddeleted-excedeu-seu.html

WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='[Replicated Folder Guid]'" call cleanupconflictdirectory

#>

WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='91152824-F11B-4D24-9CF4-03AB7AB7F771'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='7FBC3F90-1C98-46F3-A393-DE7F47D3C98A'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='70C9A624-9757-4CE9-80F4-38075A6FDF00'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='338F15DB-1100-42E8-8D69-580E013960CC'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='C8316919-C2E1-49F9-99E8-DE3E27DF33D1'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='F19D0BB7-CC2E-458A-BF5A-6BCA06C59009'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='5746781A-D2DE-4055-A657-1B9AC98D0CAF'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='C115D740-6800-496A-94E2-923093E8EB6C'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='753CDD74-EE00-4FB8-AF03-7E81CB4135F9'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='665A4A98-281B-4A1D-8673-97E5BA3E865A'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='8F694709-1CB9-45B3-BDEE-AB74872D8FC9'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='CC5E7D96-CA73-4AA6-A425-1C2F91FB5538'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='6980A7E2-CBA6-4000-9E4C-E74B47317B8B'" call cleanupconflictdirectory
WMIC.EXE /namespace:\\root\microsoftdfs path dfsrreplicatedfolderinfo where "replicatedfolderguid='AEE49EC4-466A-4E84-9E11-76B4CAD8EEF9'" call cleanupconflictdirectory