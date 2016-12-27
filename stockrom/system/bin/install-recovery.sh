#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8458240 3ab2c28a958ab1f93d9c2883710cbc2d70058fd5 5984256 c758e807ddb753ee14dc04162e8b156fd22e14eb
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8458240:3ab2c28a958ab1f93d9c2883710cbc2d70058fd5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:5984256:c758e807ddb753ee14dc04162e8b156fd22e14eb EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 3ab2c28a958ab1f93d9c2883710cbc2d70058fd5 8458240 c758e807ddb753ee14dc04162e8b156fd22e14eb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
