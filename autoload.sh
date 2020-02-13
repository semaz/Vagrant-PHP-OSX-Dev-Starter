#!/usr/bin/env bash

alias v='vagrant'
alias vh='v halt'
alias vd='v destroy'
alias vr='v reload'
alias vp='v provision'
alias vs='v ssh'
alias vu='v up'

cdv() {
    cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
}
