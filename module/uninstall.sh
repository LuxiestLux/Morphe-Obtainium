#!/system/bin/sh
MODDIR=${0%/*}
RV_DIR=/data/adb/Morphe-Module
. "$MODDIR/config"

rm -f "${RV_DIR}/${MODDIR##*/}.apk"
rmdir "$RV_DIR" 2>/dev/null || :

rm -f "/data/adb/post-fs-data.d/$PKG_NAME-uninstall.sh"