
https://github.com/asciinema/agg

```bash
sudo apt-get install asciinema
sudo apt install cargo
cargo install --git https://github.com/asciinema/agg
PATH=~/.cargo/bin:$PATH
```


```bash
asciinema rec /tmp/demo.$$
tmux attach

. /tmp/ini_menu.sh
FILENAME=${REPL_TYPE}_${SRCDB_TYPE}_${DSTDB_TYPE}_${workload_size_factor}.asciicast
mv /tmp/demo.$$ $CFG_DIR/$FILENAME
~/.cargo/bin/agg --idle-time-limit .5 $CFG_DIR/$FILENAME $CFG_DIR/$FILENAME.gif
```
