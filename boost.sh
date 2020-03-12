#!/bin/bash
# -------------------
# Cloudflare VPN data booster
# Scripted by Tuyen Tran
# http://fb.com/gr219
# -------------------
referal='ae929c3c-1ffe-4e4d-8c3d-fa3c3c22715b'
interval=$2

docker run -v `pwd`/getdata.sh:/getdata.sh --rm -i alpine sh -c \
"apk add pwgen curl; \
chmod 777 /getdata.sh; \
sh /getdata.sh $referal $interval"
