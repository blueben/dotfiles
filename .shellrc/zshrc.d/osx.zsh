# Mac OS X

if [ `uname $UNAME_OPT` = Darwin ]
then
  fwlog () {sudo /usr/sbin/tcpdump -vlnettti pflog0}
  growl () {echo -e $'\e]9;'${1}'\007' ; return  ;}
fi
