#!/bin/sh

python3 -c "
import json, os

with open('/bootstrap/config.json', 'r') as f:
    config = json.load(f)

for chromecast in config:
    settings = config[chromecast]
    command = 'web2cast --chromecast ' + chromecast + ' --url ' + settings['url'] + ' --time ' + settings['interval'] + ' &'
    print('Executing command ' + command)
    os.system(command)
"
echo "Ready."
# Keep the machine running
tail -f /dev/null
