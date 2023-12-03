FILE=/data/vault.open
if [ -d "$FILE" ]; then
cd /data
tar -cz vault.open | openssl enc -pass pass:$PASSPHRASE -aes-256-cbc -iter 10000 -base64 -md sha-256 > vault.closed && rm -rf vault.open
elif [ -f "/data/vault.closed" ]; then
cd /data
cat vault.closed | openssl enc -pass pass:$PASSPHRASE -aes-256-cbc -iter 10000 -base64 -md sha-256 -d | tar -xz && rm -rf vault.closed
fi
