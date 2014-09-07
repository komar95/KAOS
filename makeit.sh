#!/bin/bash

cmd="../arm-2008q3/bin/arm-none-eabi-"

for file in source/*
do
	name=${file##*/}
	name=${name%.*}
	if [[ $file == *.s ]]
	then
		echo $cmd"as" $file -I source/ -o build/$name.o
		$cmd"as" $file -I source/ -o build/$name.o
	fi
	if [[ $file == *.c ]]
	then
		echo $cmd"gcc" -c $file -o build/$name.o
		$cmd"gcc" -c $file -o build/$name.o
	fi
done
out=""
for file in build/*
do
	if [[ file != *.elf ]]
	then
		out=$out" "$file
	fi
done

echo $cmd"ld" --no-undefined $out -o build/out.elf -T kernel.ld
$cmd"ld" --no-undefined $out -o build/out.elf -T kernel.ld
echo $cmd"objcopy" build/out.elf -O binary kernel.img
$cmd"objcopy" build/out.elf -O binary kernel.img
echo $cmd"objdump" -d build/out.elf > kernel.list
$cmd"objdump" -d build/out.elf > kernel.list
