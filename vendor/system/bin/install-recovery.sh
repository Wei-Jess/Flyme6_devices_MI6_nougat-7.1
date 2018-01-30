#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 23449600 691130d72ea04841ce2b3b270219463e148e7090 17469440 c8aa79e5ad2d3bdcd83ba52c98f5cae65ab8a869
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23449600:691130d72ea04841ce2b3b270219463e148e7090; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17469440:c8aa79e5ad2d3bdcd83ba52c98f5cae65ab8a869 EMMC:/dev/block/bootdevice/by-name/recovery 691130d72ea04841ce2b3b270219463e148e7090 23449600 c8aa79e5ad2d3bdcd83ba52c98f5cae65ab8a869:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
