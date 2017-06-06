#!/bin/bash
directory="/test"

for i in $(find $directory -type f -name "*.php" -not -path "*app/views*" -not -path "*vendor*" -not -path "*public/packages*")
    do
        check="Class "
        result=$(head -c 5 $i)

        echo i
done



apk=$(echo $apk | awk -F'Class ' '{print $1}')
