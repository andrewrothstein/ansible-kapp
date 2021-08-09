#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/vmware-tanzu/carvel-kapp/releases/download

# https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.37.0/kapp-darwin-amd64

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dotexe=${4:-}
    local platform="${os}-${arch}"
    local lfile=$DIR/kapp-${ver}-${platform}${dotexe}
    local url=$MIRROR/v${ver}/kapp-${platform}${dotexe}
    if [ ! -e $lfile ]
    then
        wget -q -O $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ()
{
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver windows amd64 .exe
}

dl_ver ${1:-0.37.0}
