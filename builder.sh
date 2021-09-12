#bin/#!/bin/bash

#	git clone -q --depth=1 https://github.com/mvaisakh/gcc-arm64 -b  gcc-master $HOME/gcc-arm64
#	git clone -q --depth=1 https://github.com/mvaisakh/gcc-arm -b gcc-master $HOME/gcc-arm32
#	git clone -q --depth=1 https://gitlab.com/ElectroPerf/atom-x-clang $HOME/clang
#	git clone -q --depth=1 https://github.com/Divyanshu-Modi/AnyKernel3 $HOME/Repack
#	git clone -q --depth=1 https://github.com/Atom-X-Devs/android_kernel_xiaomi_sdm660 -b temp $HOME/Kernel
#	pip3 -q install telegram-send

git clone https://github.com/RahifM/android_kernel_xiaomi_msm8953/ -b staging/LA.UM.8.6.r1 --depth 1 $HOME/mido
git clone https://github.com/AOSPA/android_prebuilts_gcc_linux-x86_arm_arm-eabi -b master --depth 1 $HOME/android/gcc-arm32
git clone https://github.com/AOSPA/android_prebuilts_gcc_linux-x86_aarch64_aarch64-elf -b master --depth 1 $HOME/android/gcc-arm64

git clone https://github.com/fabianonline/telegram.sh $HOME
#wget https://raw.githubusercontent.com/RahifM/local_manifests/tgtoken/.telegram.sh 
#bash ~/tele*/tele* "Tgsh integration test - username: $(whoami)"


#	mkdir $HOME/.config
	mv telegram-send.conf $HOME/.telegram.sh
	sed -i s/demo1/${BOT_API_KEY}/g $HOME/.telegram.sh
	sed -i s/demo2/${CHAT_ID}/g $HOME/.telegram.sh
bash ~/tele*/tele* "Tgsh integration test - username: $(whoami)"

#	mv build.sh $HOME/mido/build.sh

	cd $HOME/mido
	bash build.sh
#	bash build.sh GCC

	exit
