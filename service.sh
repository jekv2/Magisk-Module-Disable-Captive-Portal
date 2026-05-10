#!/system/bin/sh
# SPDX-License-Identifier: GPL-3.0-or-later

#!/system/bin/sh

# Disable captive portal detection
settings put global captive_portal_detection_enabled 0
settings put global captive_portal_server 127.0.0.1
settings put global captive_portal_mode 0

# Optional: clear cached Wi-Fi validation (safe once after installation)
if [ ! -f /data/adb/modules/disable_captive_portal/.cleared ]; then
    rm -rf /data/misc/wifi/*.conf
    rm -rf /data/misc/wifi/WifiConfigStore.xml
    touch /data/adb/modules/disable_captive_portal/.cleared
fi
