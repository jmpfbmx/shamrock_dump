#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/7824900.sdhci/by-name/recovery:35427628:0fdf0ec590d58cc0d9e1700d9114c04f6341fc52; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/7824900.sdhci/by-name/boot:32947496:98a65861ecb2c55dbf86c2920c8e5938257e102d EMMC:/dev/block/platform/soc.0/7824900.sdhci/by-name/recovery 0fdf0ec590d58cc0d9e1700d9114c04f6341fc52 35427628 98a65861ecb2c55dbf86c2920c8e5938257e102d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
