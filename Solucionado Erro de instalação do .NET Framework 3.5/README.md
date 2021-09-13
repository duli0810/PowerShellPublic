#  Solucionado Erro de instalação do .NET Framework 3.5

### Passo a passo para solucionado Erro de instalação do .NET Framework 3.5 ####

⭐ Acesse o Blog : ["Acesso 8 "](https://acesso8.blogspot.com)

⭐ Acesse o Canal do YouTube : ["Solucionado Erro de instalação do .NET Framework 3.5"](https://youtu.be/sWbyvPZSVs8)

Há situações onde ao tentar instalar o .NET Framework 3.5  pelo modo tradicional você poderá se deparar com o erro #0x800f0906, #0x800f0907, #0x800f081f ou #0x800F0922 

Erro esses pode ser ocasionados por diversos motivos. O procedimento no vídeo acima ira auxiliar a contornar este problema. 

É possível executar esse passo a passo em destruições desktop e server da Microsoft Windows

Para isso precisamos de uma Mídia ISO ou DVD da instalação do Windows.  

## Procedimento para instalação do .NET Framework 3.5

Segue: 

1 - Insira (DVD) ou monte (.ISO) a mídia de instalação Windows
     
  *Observe a LETRA DA UNIDADE DA MÍDIA* 

2 - Abra o "PowerShell" em modo administrador 

3 - Em seguida digite o comando abaixo, informando em SOURCE a LETRA DA UNIDADE DA MÍDIA e tecle "Enter": 
    
    DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:"LETRA DA UNIDADE DA MÍDIA":\sources\sxs

👉 *Ex.: DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:E:\sources\sxs*     
   
4 - Após a instalação, o próximo passo é reiniciar o Windows.


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
