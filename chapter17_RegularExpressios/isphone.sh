#!/bin/bash
#script to filter out bad phone numbers(United States)
#sample
#(123)456-7890
#(123) 456-7890
#123-456-789
#123.456.789
gawk --re-interval '/^\(?[2-9][0-9]{2}\(?(| |-|\.)[0-9]{3}( |-|\.)[0-9]{4}/{print $0}'
