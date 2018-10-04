#!/bin/bash

#ellamain:
screen -dmS geth geth --rpc --ws --unlock="./etcuser" --password="./etcpass" --max-peers=500 --extra-data="open-classic-pool" --identity="open-classic-pool" --cache=128

sleep 5

#pool2b:
screen -dmS pool2b /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/pool2b.json

sleep 5

#pool4b:
screen -dmS pool4b /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/pool4b.json

sleep 5

#pool9b:
screen -dmS pool9b /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/pool9b.json

sleep 5

#api:
screen -dmS api /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/api.json

sleep 5

#unlocker:
screen -dmS unlocker /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/unlocker.json

sleep 5

#payout:
screen -dmS payout /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/payout.json

sleep 5

exit 0
