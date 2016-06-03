# Mac OS X

if [ `uname` = Darwin ]
then
  fwlog () {sudo /usr/sbin/tcpdump -vlnettti pflog0}
  growl () {echo -e $'\e]9;'${1}'\007' ; return  ;}
fi
