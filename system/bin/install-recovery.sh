#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:23966608:46cbf267f636fbd1ef9c9c4e887b00e1e71ee071; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:10931088:f32807978ae6308350e5f4eb0c1d8ec698a18cc8 EMMC:/dev/block/platform/bootdevice/by-name/recovery 46cbf267f636fbd1ef9c9c4e887b00e1e71ee071 23966608 f32807978ae6308350e5f4eb0c1d8ec698a18cc8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
