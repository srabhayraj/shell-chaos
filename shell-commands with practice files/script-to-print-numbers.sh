#print numbers divisible by 3 and 5, but not divisible by 15 

#!/bin/bash
#
#Divisible by 3, divisible by 5, but not divisible by 15(3*5)

for i in {1..100}; do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then
        echo $i
fi;
done
