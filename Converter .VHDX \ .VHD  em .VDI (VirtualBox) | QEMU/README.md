# Converter .VHDX \ .VHD  em .VDI (VirtualBox) | QEMU

⭐ Acesse meu Canal do **YouTube** para mais detalhes : ["Converter .VHDX \ .VHD  em .VDI (VirtualBox) | QEMU"](https://youtu.be/kL0dbD5T1tI)

⭐ Acesse o Blog : ["Acesso 8 "](https://acesso8.blogspot.com/2022/01/converter-vhdx-vhd-em-vdi-virtualbox.html)
#
Neste procedimento iremos demonstrar como converter .VHDX ou .VHD  em .VDI  (**VirtualBox**) através do software **QEMU** ( QEMU disk image utility).  Para isso iremos utilizar linha de comando através do **PowerShell**

O que é QEMU?  QEMU é um emulador e virtualizador de máquinas genéricas e de código aberto. 

⚠️ O QEMU realizar conversão para as seguintes extensões: 

🎯 QCOW2 (KVM, Xen)

🎯 QED (KVM)

🎯 VDI (VirtualBox)

🎯 VHD (HyperV)

🎯 VMDK (VMware)
#

## INSTRUÇÃO

1 - Baixe e instale a versão mais recente do QEMU, segue link para download 👇; 
 
    https://qemu.weilnetz.de/w64/

Ou baixe o QEMU que disponibilizo 👇👇👇:
   
     https://mega.nz/file/zL4FHYgK#dxZn9WGTQ-2duPc28tUmmPkZC3JsnAL1o55pIxGyE9o

3 - Abra o PowerShell no modo Administrador;
       
4 - Acesse através do PowerShell o diretorio do QEMU;
   
    cd C:\Program Files\qemu\

5 - Edite as Path do comando abaixo, com a origem (VDH / VHDX) e o destino (VDI); 
        
     ./qemu-img.exe convert <nomedoseudisco>.vhdx -O vdi <nomedofuturodisco>.vdi"
       
   Ex.: 

    .\qemu-img.exe convert "C:\disco.vhdx" -O vhdx "C:\disco.vdi" 
    
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
