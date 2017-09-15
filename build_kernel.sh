#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/derrick/arm-linux-androideabi-5.3/bin/arm-linux-androideabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8926-sec_rubenslte_defconfig msm8226-sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
