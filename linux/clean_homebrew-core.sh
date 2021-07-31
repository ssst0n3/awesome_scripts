#!/bin/bash
set -ex
cd /home/linuxbrew/.linuxbrew/Homebrew/Library/Taps/homebrew
mv homebrew-core homebrew-core_bak
git clone https://github.com/Homebrew/linuxbrew-core.git --depth=1
mv linuxbrew-core homebrew-core
rm homebrew-core_bak -rf