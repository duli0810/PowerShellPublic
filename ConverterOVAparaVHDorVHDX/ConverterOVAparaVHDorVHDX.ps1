echo ""
echo                                              "################ Converter .ova para .vhd / vhdx ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 20/08/2021 ################"
echo ""
echo ""
echo ""
###################################################################### INSTRUÇÃO ##############################################################################

<#

1- Extraia o .ova ( Use software como winrar ou .zip), será gerado dois arquivos o .vmdk e o .ovf; 
2- Instale o Microsoft Virtual Machine Converter; 
3- Edite as Path do script "ConverterOVAparaVHDorVHDX.ps1" , com a origem (VMDK) e destino (VDH / VHDX);
4- Execute o script "ConverterOVAparaVHDorVHDX.ps1";
5- Será gerado a VHD ou VHDX no diretorio selecionado; 

#>

write-host -ForegroundColor yellow  "ATENÇÃO: Caso apresente um erro semelhante ao exemplo abaixo: "
echo ""
write-host -ForegroundColor red  'ConvertTo-MvmcVirtualHardDisk : The entry 00000000-0000-0000-0000-000000000000 is not a supported disk database entry for the descriptor.'
echo ""
write-host -ForegroundColor yellow  'Segue link com correção -> endereço_do_github!!!'

############################################################ Declarando Varialvel ##############################################################################

$MVMC     = "C:\Program Files\Microsoft Virtual Machine Converter\MvmcCmdlet.psd1" #Diretorio Default

############################################################## Informe os Path #################################################################################

$DirVMDK  = "<Informe a path da VMDK>"                                 # Informe a path da VMDK juntamente com o nome do disco ( Ex.: C:\disco.vmdk )
$DirVHD   = "<Informe a path onde será salvo a VHD ou VHDX>"           # Informe a path onde será salvo a VHD ou VHDX ( Ex.: C:\ )

############################################################ Selecione o Tipo e Formato da VHD ##################################################################
<#

OBS: Alteração opcional, o script esta como padrao DynamicHardDisk e vhdx

#>
<#

**** VHD Type *** 

DynamicHardDisk
FixedHardDisk

#>
<#

**** VHD Format *** 

vhd
vhdx

#>

############################################################ Converter .ova para .vhd / vhdx ######################################################################

Import-Module $MVMC

ConvertTo-MvmcVirtualHardDisk -SourceLiteralPath "$DirVMDK" -VhdType DynamicHardDisk -VhdFormat vhdx -destination $DirVHD 

