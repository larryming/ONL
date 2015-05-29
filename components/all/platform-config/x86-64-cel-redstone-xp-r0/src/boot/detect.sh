############################################################
# <bsn.cl fy=2013 v=none>
#
#        Copyright 2013, 2014 BigSwitch Networks, Inc.
#
#
#
# </bsn.cl>
############################################################
# Default platform detection.

buf="`dmidecode 2>&1 || :`"
case "$buf" in
  *"Product Name: Redstone-XP"*)
    echo "x86-64-cel-redstone-xp-r0" >/etc/onl_platform
    exit 0
  ;;
esac

exit 1
