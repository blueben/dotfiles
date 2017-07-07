# Mac OS X

if [ `uname $UNAME_OPT` = Darwin ]
then
  fwlog () {sudo /usr/sbin/tcpdump -vlnettti pflog0}
  growl () {echo -e $'\e]9;'${1}'\007' ; return  ;}
  doc () { open dash://$* }
  dns-traffic () { tshark -Y "dns.flags.response == 1" -Tfields -e frame.time_delta -e dns.qry.name -e dns.a -Eseparator=/t -Eheader=y $*}

 export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
 export PATH="/usr/local/opt/e2fsprogs/sbin:$PATH" 
fi
