#!/sbin/sh
/sbin/mount /dev/block/bootdevice/by-name/system /system
/sbin/mount /dev/block/bootdevice/by-name/vendor /vendor
/sbin/mount /dev/block/bootdevice/by-name/modem /firmware
/sbin/mount /dev/block/bootdevice/by-name/persist /persist
relink()
{
	chmod 755 $1
}

relink /vendor/bin/qseecomd
relink /vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti
relink /vendor/bin/hw/android.hardware.keymaster@3.0-service-qti

/sbin/setprop crypto.ready 1
