######
# by Kutu Moba

SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false
REPLACE="
"
unzip -o "$ZIPFILE" 'banner' -d $MODPATH >&2
ui_print
ui_print
ui_print "*******************************"
ui_print "            X-DISPLAY          "
ui_print "*******************************"
ui_print "*******************************"
ui_print "            Kutu Moba          "
ui_print "*******************************"
ui_print
ui_print
sleep 1
ui_print ""
ui_print ""
ui_print "$(awk '{print}' "$MODPATH/banner")"
ui_print ""
sleep 2
ui_print "▒▒▒▒ 𝗗𝗲𝘃𝗶𝗰𝗲 𝗜𝗻𝗳𝗼 ▒▒▒▒ "
sleep 1
ui_print "- "
ui_print "   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
ui_print "   ▒ "
ui_print "   ▒▒▒▒ CODE NAME        : $(getprop ro.product.board) "
sleep 0.2
ui_print "   ▒▒▒▒ VERSION GL       : $(getprop ro.opengles.version) "
sleep 0.2
ui_print "   ▒▒▒▒ SELINUX          : $(getprop ro.boot.selinux) "
sleep 0.2
ui_print "   ▒▒▒▒ KERNEL           : $(uname -r) "
sleep 0.2
ui_print "   ▒▒▒▒ BUILD DATE       : $(getprop ro.system.build.date) "
slepp 0.2
ui_print "   ▒▒▒▒ ANDROID VERSION  : $(getprop ro.system.build.version.release) "
sleep 0.2
ui_print "   ▒▒▒▒ ROM              : $(getprop ro.build.flavor) "
sleep 0.2
ui_print "   ▒▒▒▒ DESCRIPTION ROM  : $(getprop ro.build.description) "
sleep 0.2
ui_print "   ▒▒▒▒ FINGERPRINT      : $(getprop ro.build.fingerprint) "
sleep 0.2
ui_print "   ▒▒▒▒ SECURITY PATCH   : $(getprop ro.build.version.security_patch) "
ui_print "   ▒ "
ui_print "   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
ui_print "- "
sleep 0.2
ui_print "▒▒▒▒ START INSTALLATION ▒▒▒▒ "
sleep 2
ui_print " "
ui_print " "
ui_print " "
ui_print "- Extracting module files"
ui_print " "
ui_print " "
ui_print "- run it with su -c xdisplay in termux "
ui_print "  then enter the number to increase the refresh rate "
ui_print " "
ui_print " "
unzip -o "$ZIPFILE" 'common/*' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
mkdir -p $MODPATH/system/bin
mkdir -p $MODPATH/out
cp -af $TMPDIR/code $MODPATH/code
cp -af $TMPDIR/dt $MODPATH/system/bin/dtc
cp -af $TMPDIR/f $MODPATH/system/bin/xdisplay
cp -af $TMPDIR/im $MODPATH/system/bin/imjtool
cp -af $TMPDIR/mk $MODPATH/system/bin/mkdtimg

sleep 1
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm_recursive "$MODPATH/system/bin" 0 0 0777 0755  

