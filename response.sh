#!/bin/sh

#  
# This returns a minimal HTTP response. 
#  - $() is a subshell, you can use it to make your
#    response dynamic. 
#  - The blank line after "Connection: close" is significant,
#    it separates the HTTP headers from the body. 
#  

cat - <<EOF
HTTP/1.1 200 OK
Connection: close

$(date): Hello World!

EOF