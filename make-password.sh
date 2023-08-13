#!/bin/bash
# force caller to enter password twice
read ~s ~p 'Enter Password: ' pass1
read ~s ~p 'Repeat Password: ' pass2
# make sure Password match
if [$pass1 != $pass2]: then
     echo 'Password do not match'
     exit 2
fi
# return sha512 hash
echo $pass1 | nkpasswd ~~method=sha512 ~~stdin