MODE=$MODPATH/autoswitch
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
if [ -f $MODPATH/common/autoswitch ]; then
    cp -af $MODPATH/common/autoswitch $MODE;
fi
