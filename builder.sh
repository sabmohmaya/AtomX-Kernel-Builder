#bin/#!/bin/bash

git clone https://github.com/fabianonline/telegram.sh $HOME/telegram.sh
mv .telegram.sh $HOME/.telegram.sh
sed -i s/demo1/${BOT_API_KEY}/g $HOME/.telegram.sh
sed -i s/demo2/${CHAT_ID}/g $HOME/.telegram.sh
bash ~/tele*/tele* "Tgsh integration test - username: $(whoami)"

git clone https://github.com/RahifM/android_kernel_xiaomi_msm8953/ -b staging/lineage-17.1 --depth 1 $HOME/mido
cd $HOME/mido && wget https://pikachu.drk1.workers.dev/0:/k4.sh && chmod +x k*.sh && wget https://pikachu.drk1.workers.dev/0:/w5.patch  && git apply w* && cd
git clone https://github.com/RahifM/AnyKernel3 -b mido $HOME/AnyKernel3
git clone https://github.com/AOSPA/android_prebuilts_gcc_linux-x86_arm_arm-eabi -b master --depth 1 $HOME/android/gcc-arm32
git clone https://github.com/AOSPA/android_prebuilts_gcc_linux-x86_aarch64_aarch64-elf -b master --depth 1 $HOME/android/gcc-arm64

cd $HOME/mido
bash k*sh

exit
