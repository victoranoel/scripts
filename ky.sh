#!/bin/bash
if [ "$1" = "van" ]; then
    userN="van"
else
    userN="victor"
fi
#The above was before I figured out I could use $USER, left for documentation
#Some say funtions should replace alias but in cygwin bash I'm not sure
alias redo="cd /cygdrive/c/cygwin64/home/vn1028450"

alias sway="cd /cygdrive/c/Users/$USER/Dropbox/ccsV5_workspaces/hipstrategy"

alias vn="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/code/embedded-bud/X-CUBE-BLE1_Middlewares_Subset/ST/STM32_BlueNRG/SimpleBlueNRG_HCI"

alias nrg="cd /cygdrive/c/Users/vn1028450/STMicroelectronics/STM32CubeExpansion_BLE1_V2.7.0/"
alias hci="cd /cygdrive/c/Users/vn1028450/STMicroelectronics/STM32CubeExpansion_BLE1_V2.7.0/Middlewares/ST/STM32_BlueNRG/SimpleBlueNRG_HCI"

alias l0="cd /cygdrive/c/Users/vn1028450/STMicroelectronics/STM32CubeExpansion_BLE1_V2.7.0/Drivers/STM32L0xx_HAL_Driver"
alias nrg2="cd /cygdrive/c/Users/vn1028450/STMicroelectronics/'BlueNRG DK 2.0.2'/"
alias nrg3="cd /cygdrive/c/Users/vn1028450/STM32Cube/Repository/STM32Cube_FW_L0_V1.7.0"



alias iar7="cd /cygdrive/c/Program\ Files\ \(x86\)/IAR\ Systems/Embedded\ Workbench\ 7\.4/arm"
alias iar8="cd /cygdrive/c/Program\ Files\ \(x86\)/IAR\ Systems/Embedded\ Workbench\ 8\.0/arm"

alias dk="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/code/$1/embedded-bud/Src"
alias di="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/code/$1/embedded-bud/Inc"
alias ew="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/code/$1/embedded-bud/EWARM"
alias msg="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/code/$1/embedded-bud/Drowsy-Messages"

alias snd="cd /cygdrive/c/Users/vn1028450/SharePoint/Drowsy\ -\ Drowsy\ Files/sounds/"
alias efe="cd /cygdrive/c/Users/vn1028450/SharePoint/Drowsy\ -\ Drowsy\ Files/Pre-EFE\ Logs/"
alias log="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/debuglogs"
alias tst="cd /cygdrive/c/Users/vn1028450/OneDrive\ -\ Bose\ Corporation/code/Drowsy_Test"

alias gro="grep -r --exclude-dir=Projects"
g() { grep "$@" *.[ch]; }
plog() { python -m Drowsy-Messages "$1" ; }
ship() {
    echo TUMBLE;
    grep -r --include=firmware-parsed.log TUMBLE | wc -l;
    echo CLOBBER;
    grep -r --include=firmware-parsed.log CLOBBER ;
    echo CLUSTER;
    grep -r --include=firmware-parsed.log CLUSTER;
    echo HAL
    grep -r --include=firmware-parsed.log HAL |wc -l;
    grep -r --include=firmware-parsed.log HAL |grep BNRG_HAL_I |wc -l;
    echo LIGHTFS
    grep -r --include=firmware-parsed.log LIGHTFS;
}
