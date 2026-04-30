SKIPUNZIP=1

ui_print "*******************************"
ui_print "* Unlocker+           *"
ui_print "* Universal Feature Mod     *"
ui_print "*******************************"

# 1. Extract base files
unzip -o "$ZIPFILE" 'module.prop' -d "$MODPATH" >&2
unzip -o "$ZIPFILE" 'system.prop' -d "$MODPATH" >&2

# 2. Detect Brand
BRAND=$(getprop ro.product.brand | tr '[:upper:]' '[:lower:]')
ui_print "- Detecting Device Brand: $BRAND"

if [ "$BRAND" == "samsung" ]; then
    ui_print "- Samsung detected! Unlocking CSC Features..."
    
    # Create the modern Samsung path for CSC
    CSC_DIR="$MODPATH/system/opt/omc/conf"
    mkdir -p "$CSC_DIR"
    
    # Copy your cscfeature.xml from the zip to the module folder
    unzip -o "$ZIPFILE" 'samsung_files/cscfeature.xml' -d "$MODPATH/samsung_files/" >&2
    cp -af "$MODPATH/samsung_files/cscfeature.xml" "$CSC_DIR/cscfeature.xml"
    
    ui_print "- CSC Features: Call Record, No Shutter Sound, Network Speed."
else
    ui_print "- Non-Samsung device. Using Universal Tweaks only."
fi

# 3. Global 90FPS Force
ui_print "- Injecting 90FPS unlocker..."
resetprop -n persist.sys.jj.fps 90

# 4. Cleanup and Permissions
rm -rf "$MODPATH/samsung_files"
set_perm_recursive $MODPATH 0 0 0755 0644

ui_print "*******************************"
ui_print "* Success! Please Reboot    *"
ui_print "*******************************"
