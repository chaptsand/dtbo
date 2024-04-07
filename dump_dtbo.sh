 #!/bin/bash
 for dtbo_file in `ls *.dtb`
 do
    echo $dtbo_file
    dtc -I dtb -O dts $dtbo_file -o "$(echo "$dtbo_file" | sed -r 's|.dtb|.dts|g')"
 done
