#!/bin/sh
if [ ! -f UUID ]; then
  UUID="303ce9cb-f39d-44e0-afb7-e2f2131ea8a6"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

