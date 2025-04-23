Recording of Aricon CLI demo in `tmux` using `asciinema`, `expect`

# crate asciinema video

```bash
docker compose exec workloads bash
```

```bash
cleartmux() {
local i
for i in $(seq 0 3); do 
    tmux send-keys -t arcion:0.$i  C-c
    sleep 1
    tmux send-keys -t arcion:0.$i 'clear' Enter
    sleep 1
done
tmux select-pane -t arcion:0.0 
sleep 1
}

```bash
clearandenter
asciinema rec --overwrite -t "db2 to mysql full tpcc,ycsb" recpipeline.$$
```

```bash
tmux attach-session -t arcion:0.0
```

detach from tmux with <ctl>-b d

stop from asciinema rec with <ctl>-d

. /tmp/ini_menu.sh
FILENAME=${REPL_TYPE}_${SRCDB_TYPE}_${DSTDB_TYPE}_${workload_size_factor}.asciicast
mv recpipeline.$$ $CFG_DIR/$FILENAME
~/.cargo/bin/agg --idle-time-limit .5 $CFG_DIR/$FILENAME $CFG_DIR/$FILENAME.gif


## One Time Setup

1. connect to asciinema

    ```
    asciinema auth
    ```

2. run commands that will be recorded:

    For exmaple:

    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/databricks/docker-dev/refs/heads/{ARCION_WORKLOADS_TAG:-main}/install.sh)"
    ```

3. stop and upload:

- stop `asciinema rec`

    ```bash
    exit
    ```
- press `<enter>` to upload to [https://asciinema.org/](https://asciinema.org/)

## At `asciinema.org`

1. link accounts if not already done
   
2. change title to "Source To Destination Replication Workloads"
    For exmaple
    ```bash
    MySQL to PostgresSQL Full TPCC,YCSB
    ```
3. change idle timing to `.5` sec


## Setup 

1. install asciinema:

    ```bash
    sudo apt-get install asciinema
    ```

### asciinema to gif

https://github.com/asciinema/agg

sudo apt-get install cargo
cargo install --git https://github.com/asciinema/agg


# create terminalizer gif

** NOT USED **

gif record requires X which is more complex to setup
```
sudo apt install npm
sudo npm install -g terminalizer
terminalizer record demo
```
