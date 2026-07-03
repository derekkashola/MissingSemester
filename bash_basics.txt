[ -d /some/path ]   # is it a directory?
[ -f /some/file ]   # is it a regular file?
[ -e /some/path ]   # does it exist at all (file or dir)?
[ -r /some/file ]   # is it readable?
[ -x /some/file ]   # is it executable?



[ -z "$var" ]       # is the string empty?
[ -n "$var" ]       # is the string non-empty?
[ "$a" = "$b" ]     # are two strings equal?
[ "$a" != "$b" ]    # are they not equal?






[ -d mkdir /tmp/mydir ] - shorthand for test, square brackets require a space. returns 0 for true 1 for false.


|| runs only if the previous command fails

&& runs the next command only

[ -d mkdir /tmp/mydir ] || mkdir /tmp/mydir 




