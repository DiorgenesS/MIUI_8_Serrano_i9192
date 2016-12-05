#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8460288 6b5ad2a05e1739c5680cb8567211f66a03e70582 5984256 2c7d354376b477aa57c6b4223a84c639bbb4c964
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8460288:6b5ad2a05e1739c5680cb8567211f66a03e70582; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:5984256:2c7d354376b477aa57c6b4223a84c639bbb4c964 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6b5ad2a05e1739c5680cb8567211f66a03e70582 8460288 2c7d354376b477aa57c6b4223a84c639bbb4c964:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
