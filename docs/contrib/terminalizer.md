# Summary

requires X which makes install rather complex



https://github.com/faressoft/terminalizer/issues/127


```bash
sudo apt-get install nodejs npm
sudo npm install -g terminalizer
ID=$(whoami)
sudo chown -R $ID /usr/local/lib/node_modules
sudo chown -R $ID /usr/local/bin
chown -R $ID /usr/local/share
sudo apt-get install -y libgbm-dev

```

```bash
sudo apt-get install -y libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxi6 libxtst6 libnss3 libgdk-pixbuf2.0-0 libgtk-3-0 libxss1

sudo apt-get install -y xvfb
Xvfb :1 -screen 0 1024x768x24


$ curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
$ sudo apt install -y nodejs
$ sudo npm install -g terminalizer --unsafe-perm=true --allow-root
$ sudo mkdir /usr/lib/node_modules/terminalizer/render/frames
$ sudo touch /usr/lib/node_modules/terminalizer/render/data.json
$ sudo chmod g+w /usr/lib/node_modules/terminalizer/render/frames /usr/lib/node_modules/terminalizer/render/data.json
$ sudo chgrp ubuntu /usr/lib/node_modules/terminalizer/render/frames /usr/lib/node_modules/terminalizer/render/data.json
```



record
```bash
terminalizer record -k xxx demo
```

play
```bash
terminalizer play demo
```

gif
```bash
terminalizer render demo
```