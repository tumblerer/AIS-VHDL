setMode -acecf
setAttribute -configdevice -attr size -value "0"
setMode -acecf
addConfigDevice  -name "Untitled" -path "/home/fr909/chris_sysace"
addCollection -name "Untitled"
addDesign -version 0 -name "rev0"
setMode -acecf
addDeviceChain -index 0
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr size -value "128000000"
setMode -acecf
addConfigDevice -size 128000000 -name "XCACECF" -path "/home/fr909/chris_sysace/Untitled"
addCollection -name "Untitled"
setMode -acecf
setAttribute -configdevice -attr size -value "generaic"
setAttribute -configdevice -attr reserveSize -value "0"
setAttribute -configdevice -attr name -value "XCCACE-AUTO"
addDesign -version 0 -name "rev0"
setMode -acecf
addDeviceChain -index 0
addDevice -p 1 -file "/home/fr909/Desktop/chris_4/project/base_systems/ml605/implementation/system.bit"
setAttribute -configdevice -attr path -value "/home/fr909/chris_sysace"
generate -active Untitled
setMode -acecf
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setCurrentCollection -collection "Untitled"
setCurrentDesign -version 0
deleteDevice -position 1
deleteDesign -version 0
setCurrentDesign -version -1
deleteCollection -name "Untitled"
setAttribute -configdevice -attr size -value "0"
setMode -acecf
setMode -acempm
setMode -pff
