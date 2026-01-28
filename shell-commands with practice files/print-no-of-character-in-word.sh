#script to print number of times "s" comes in a word mississippi

#!/bin/bash
#
x=mississippi

grep -o "s" <<<"$x" |wc -l
# -o is used for only a single word
