# Converter .OVA / .VMDK para .VHD / .VDHX via QEMU 

O Procedimento irá converter disco .ova e .vmdk para disco .vhd / .vhdx. 

Para converter o .ova basta extrai-lo, pois dentro dele estará o .vmdk. Em seguida é só seguir o procedimento abaixo.
#

## INSTRUÇÃO

1 - Extraia o .ova ( Use software como winrar ou .zip), será gerado dois arquivos o .vmdk e o .ovf; 

2 - Baixe e instale a versão mais recente do QEMU, segue link para download 👇; 
 
    https://qemu.weilnetz.de/w64/

Ou baixe o QEMU que disponibilizo 👇👇👇:
   
     https://mega.nz/file/zL4FHYgK#dxZn9WGTQ-2duPc28tUmmPkZC3JsnAL1o55pIxGyE9o

3 - Abra o PowerShell no modo Administrador;
       
4 - Acesse através do PowerShell o diretorio do QEMU;
   
    cd C:\Program Files\qemu\

5 - Edite as Path do comando abaixo, com a origem (VMDK) e destino (VDH / VHDX) e formado do disco ( dynamic / fixed ); 
        
    .\qemu-img.exe convert "<Informe a path da VMDK>.vmdk" -O vhdx -o subformat=<Informe o formato do disco> "<Informe a path onde será salvo a VHD ou VHDX>.vhdx"
       
   Ex.: 

    .\qemu-img.exe convert "C:\disco.vmdk" -O vhdx -o subformat=dynamic "C:\disco.vhdx" 
    
6 - Em seguida execute o comando e aguarde a conversão do disco virtual.    

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
