# Erro: Convert .VMDK para .VHD / .VHDX

Neste procedimento trataremos de um erro que ocorre, em alguns casos, no processo de conversão de disco .VMDK para .VHD / .VHDX através do Microsoft Virtual Machine Converte (MVMC)

Caso apresente um erro semelhante ao exemplo abaixo, segue intrução:  

```ruby
ConvertTo-MvmcVirtualHardDisk : The entry 00000000-0000-0000-0000-000000000000 is not a supported disk database entry for the descriptor. 
```

## INSTRUÇÃO

1- Baixe o software "dsfok" ( segue link 👇 ) descompacte-o. Neste procedimento foi salvo diretamente no C ( C:\dsfok ); 
``` 
https://mega.nz/file/PDwBxYoA#01kzgpj0ZCM3UGaUCvLOMAMdO54TpxeKWcm-RfBwpPU
```
2- Abra o PowerShell e digite o camando abaixo: 
``` 
C:\dsfok\dsfo.exe "<Informe a path da VMDK>" 512 1024 "C:\descriptor.txt"

```
3- Ao executar o "dsfo.exe", será gerado um .txt chamado "descriptor" no C:\ ;

4- Abra o "descriptor.txt" e comente (#) a linha que apresenta o condigo do erro ( No exemplo: 00000000-0000-0000-0000-000000000000 ), salve o arquivo.

5- Agora execute o "dsfi.exe" 
``` 
C:\dsfok\dsfi.exe "<Informe a path da VMDK>" 512 1024 "C:\descriptor.txt"

```
6- Em seguida realize o processo de conversão da .VMDK;
   
   ⚠️Atenção: Caso apresente o mesmo erro com outro código, repita o processo 4,5 e 6, e realize novamente o processo de conversão, até não obter mais erros. 
   
#

<ul align="center"> 
  <p><b>Siga-me nas Redes Socias:</b>.</p>

  <p>👇👇👇</p>
</ul>  
  
 ##
<div align="center"> 
  <a href = "https://acesso8.blogspot.com/"><img src="https://i.imgur.com/T01dNPP.png" target="_blank"></a>
  <a href="http://www.youtube.com/channel/UCh6CzOE6aWxy_5RYG4To88g?sub_confirmation=1" target="_blank"><img src="https://i.imgur.com/Hp8VxZO.png" target="_blank"></a>
  <a href="https://twitter.com/8Acesso" target="_blank"><img src="https://i.imgur.com/NQZ8fjf.png" target="_blank"></a>
  <a href="https://www.linkedin.com/in/eduardo-rodrigues-da-silva-78895a25/" target="_blank"><img src="https://i.imgur.com/FRMLFvm.png" target="_blank"></a>
</div>
