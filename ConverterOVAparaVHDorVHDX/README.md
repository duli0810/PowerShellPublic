# Script - Converter .ova para .vhd / .vhdx  

O Script irá converter disco em .vmdk para disco .vhd / .vhdx. 

Para converter o .ova basta extrai-lo, pois dentro dele estará o .vmdk
#

## INSTRUÇÃO

1 - Extraia o .ova ( Use software como winrar ou .zip), será gerado dois arquivos o .vmdk e o .ovf; 

2 - Instale o Microsoft Virtual Machine Converter, segue link para download; 
 
    https://mega.nz/file/7TBSiBDY#9Mu170URQtCnpzRZvqHw_cJaGofgkgqiPhXOpS41q34

3 - Edite as Path do script "ConverterOVAparaVHDorVHDX.ps1" , com a origem (VMDK) e destino (VDH / VHDX);
   
    $DirVMDK  = "<Informe a path da VMDK>"                        # Informe a path da VMDK juntamente com o nome do disco ( Ex.: C:\disco.vmdk )
    $DirVHD   = "<Informe a path onde será salvo a VHD ou VHDX>"  # Informe a path onde será salvo a VHD ou VHDX ( Ex.: C:\ )

Obs.: Coloque a Path entre as " "

4 - Execute o script "ConverterOVAparaVHDorVHDX.ps1";

5 - Será gerado a VHD ou VHDX no diretorio selecionado;   

#

#### OBSERVAÇÃO

- Caso apresente um erro semelhante ao exemplo abaixo: 

```ruby
    ConvertTo-MvmcVirtualHardDisk : The entry 00000000-0000-0000-0000-000000000000 is not a supported disk database entry for the descriptor. 
```
- Segue link para correção

```
   endereço_do_github
```
#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
