#!/usr/bin/env zsh

device=$(echo $(ip route | grep default | sort -k5n | head -n1) | awk '{print $5}')

if [ -z "$(ip tuntap | grep tun0)" ]; then
  ip tuntap add mode tun dev tun0
  ip addr add 198.18.0.1/15 dev tun0
fi

if [ ! -z "$(pidof tun2socks)" ]; then
  kill $(pidof tun2socks)
  ip route del default via 198.18.0.1 dev tun0
  ip link set dev tun0 down
  ip6tables -P INPUT ACCEPT
  ip6tables -P FORWARD ACCEPT
  ip6tables -P OUTPUT ACCEPT
else
  ip link set dev tun0 up
  ip6tables -P INPUT DROP
  ip6tables -P FORWARD DROP
  ip6tables -P OUTPUT DROP
  ip route add default via 198.18.0.1 dev tun0 metric 50
  tun2socks -device tun0 -proxy 'ssconf://click-vpn.ru:8443/API/conf/7e1ecf592543748858885015b45a09a9#ClickVPN%20🌐' -interface $device &
fi
