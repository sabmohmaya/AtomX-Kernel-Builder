#bin/#!/bin/bash

git clone https://github.com/fabianonline/telegram.sh $HOME/telegram.sh
mv .telegram.sh $HOME/.telegram.sh
sed -i s/demo1/${BOT_API_KEY}/g $HOME/.telegram.sh
sed -i s/demo2/${CHAT_ID}/g $HOME/.telegram.sh
bash ~/tele*/tele* "Tgsh integration test - username: $(whoami)"

git clone https://github.com/RahifM/android_kernel_xiaomi_msm8953/ -b staging/lineage-18.1-clang --depth 1 $HOME/mido
git clone https://github.com/osm0sis/AnyKernel3 $HOME/AnyKernel3
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 -b android-11.0.0_r48 --depth 1 $HOME/clang
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9 --depth 1 $HOME/arm
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 --depth 1 $HOME/aarch64

cd $HOME/mido
bash k*sh

exit
