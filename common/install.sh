mods=$MODPATH/autoswitch
TEXT1="GameMods that will get applied automatically when the game starts. "
TEXT2="𝗘𝗡𝗔𝗕𝗟𝗘 𝗠𝗼𝗱𝗲: "
cat << "EOF"
    ____     __       __                ___          
   / __/__  / /__    / /  ___ _  _____ / (_)__  ___ _
  _\ \/ _ \/ / _ \  / /__/ -_) |/ / -_) / / _ \/ _ `/
 /___/\___/_/\___/ /____/\__/|___/\__/_/_/_//_/\_, / 
                                              /___/ 
EOF
sleep 0.5
ui_print "- Device : $(getprop ro.product.system.manufacturer) "
sleep 0.5
ui_print "- Processor : $(getprop ro.product.board) "
sleep 0.5
ui_print "- Android Version : $(getprop ro.build.version.release) "
sleep 0.5
ui_print "- Kernel : $(uname -r) "
ui_print ""
sleep 0.5
ui_print " (Volume + Next) × (Volume - Install) "
ui_print ""
sleep 0.5
ui_print "- XTReme GameMods -"
ui_print ""
sleep 0.2
ui_print " 1. SDM 625/636/660 "
sleep 0.2
ui_print " 2. POCO F1 Beryllium "
sleep 0.2
ui_print " 3. Universal Devices "
ui_print ""
sleep 0.2
ui_print " Select Mode: "
GM=1
while true; do
	ui_print "  $GM"
	if $VKSEL; then
		GM=$((GM + 1))
	else 
		break
	fi
	if [ $GM -gt 3 ]; then
		GM=1
	fi
done
ui_print " Selected Mode: $GM "
#
case $GM in
 1 ) TEXT3="SDM 625/636/660"; cp -af $MODPATH/common/autoswitch $mods;;
 2 ) TEXT3="POCO F1 Beryllium"; cp -af $MODPATH/common/autoswitch_poco $mods;;
 3 ) TEXT3="Universal Devices"; cp -af $MODPATH/common/autoswitch_universal $mods;;
esac
ui_print ""
ui_print "- MODE: $TEXT3 "
ui_print ""
sed -i "/description=/c description=${TEXT1}${TEXT2}${TEXT3}" $MODPATH/module.prop;