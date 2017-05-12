#!/bin/bash
sleep 60

ip=$(hostname --all-ip-addresses)

curl 'https://docs.google.com/a/onvio.com/forms/d/e/1FAIpQLSdwcGUhTPYmIVM5BTNUQjbtw9PMLC2gIqxcMaK1_fD-i_16Pw/formResponse' --data 'entry.319187029='"$ip" --compressed
