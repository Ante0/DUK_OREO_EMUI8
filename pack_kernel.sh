#!/bin/bash
cp out/arch/arm64/boot/Image.gz kernel/tools/kernel
cd tools/
./pack_kernerimage_cmd.sh
mv kernel.img ../kernel.img
cd ../
echo "kernel.img created in:"
realpath kernel.img
