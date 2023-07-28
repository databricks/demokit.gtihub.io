Welcome to the [Arcion](http://arcion.io) demo kit.
Arcion replicates data from one platform to another.
The demo kit makes testing and demoing Arcion easy.

# Install the Arcion demo kit  

Cut and paste the following in a terminal.

- run the latest
```
/bin/bash -c "$(curl -k -fsSL https://raw.githubusercontent.com/arcionlabs/docker-dev/HEAD/install.sh)"
```

- to run a specific tag
```bash
export ARCION_WORKLOADS_TAG=23.07
/bin/bash -c "$(curl -k -fsSL https://raw.githubusercontent.com/arcionlabs/docker-dev/${ARCION_WORKLOADS_TAG:-HEAD}/install.sh)"
```

# About the Arcion demo kit  

The diagram below describes the components of the demo kit.  Please refer to [https://docs.arcion.io](https://docs.arcion.io) for more info.

- Load Generator
- Data source
- Arcion host with dedicated metadata database
- Data destination

[![](https://mermaid.ink/img/pako:eNpNj8FqwzAQRH9F7MmF-OCrKQHXhlJwoFTpocg5bKxNYxpLYb06lJB_rxQF0j09mJkd5gKjtwQ1fDOej6r_GJyK15veo1Wv5IhRPD_veb19b8s2wVerX3aqLNdKZ_cS9jne8Dh5p9pTWIQ4i-ma6sEbU2xIUKVPHQo-7bJGzmbQptA-8Ej_LLe2pjL3giSoz7d7sqlu8tYUHS0yOZToeWRhBTPxjJONMy8pMoAcaaYB6ogW-WeAwV2jD4N4_etGqIUDrSCcLQp1E8Z5M9QHPC10_QN9k16L?type=png)](https://mermaid.live/edit#pako:eNpNj8FqwzAQRH9F7MmF-OCrKQHXhlJwoFTpocg5bKxNYxpLYb06lJB_rxQF0j09mJkd5gKjtwQ1fDOej6r_GJyK15veo1Wv5IhRPD_veb19b8s2wVerX3aqLNdKZ_cS9jne8Dh5p9pTWIQ4i-ma6sEbU2xIUKVPHQo-7bJGzmbQptA-8Ej_LLe2pjL3giSoz7d7sqlu8tYUHS0yOZToeWRhBTPxjJONMy8pMoAcaaYB6ogW-WeAwV2jD4N4_etGqIUDrSCcLQp1E8Z5M9QHPC10_QN9k16L)

# Prerequisites

Assumptions:

- Running on Windows WSL2, Liunx or Mac 
  - Intel CPU can run all databases
  - Apple Silicon cannot run Oracle 
- Have Arcion License or `replicant.lic`
  - `replicant.lic` file in the current directory 
  - `ARCION_LICENSE` env variable    
- Have Docker 19.3.0 or above
- Have `docker compose` or `docker-compose` 
- Have git installed
- Have access to a terminal
- Have access to a browser


[![asciicast](https://asciinema.org/a/587770.svg)](https://asciinema.org/a/587770)

# Recordings of the Demo

Arcion supports snapshot, real-time, snapshot, and delta-snapshot replication modes.
Recorded Arcion CLI demos of source, destination, and replication type combination are available.
The recordings use `asciiinema` so that YAML config files used can be cut / pasted.
This is a functional demo using TPCC and YCSB.
The data size is 1GB each, 1 thread on given to Arcion, and 8 GB of RAM shared.  

- Left side of the table (the left column) is the source.
- Right side of the table (the top row) is the destination.
- The cell has workloads and URL to the demo.
- A blank cell means a demo has not been recorded as of yet.
   
## Snapshot Replication CLI Demos

- C=TPCC
- Y=YCSB
- CY=TPCC and YCSB

snapshot | cockroach | Google CloudSQL MySQL | kafka | minio | mysql | null | oracle | pg | redis stream | single store | snow flake | sql edge | sql server | yuga byte
-- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | --
db2 | [CY](./docs/resources/asciinema/snapshot_db2_cockroach.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_db2_minio.ascii.cast.gif) |   | [CY](./docs/resources/asciinema/snapshot_db2_null.ascii.cast.gif)<br />[CY](./docs/resources/asciinema/snapshot_db2_null.ascii.cast.gif) |   |   |   | [CY](./docs/resources/asciinema/snapshot_db2_s2.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_db2_sqlserver.ascii.cast.gif) |  
db2 luw |   |   | [CY](https://asciinema.org/a/596930) | [CY](https://asciinema.org/a/596933) | [CY](https://asciinema.org/a/596925) | [CY](https://asciinema.org/a/596934) | [CY](https://asciinema.org/a/596927) | [CY](https://asciinema.org/a/596926) | [CY](https://asciinema.org/a/596929) |   | [CY](https://asciinema.org/a/596928) |   |   |  
informix | [CY](./docs/resources/asciinema/snapshot_informix_cockroach.ascii.cast.gif) |   | [CY](https://asciinema.org/a/596949) | [CY](https://asciinema.org/a/596417)<br />[CY](./docs/resources/asciinema/snapshot_informix_minio.ascii.cast.gif) | [CY](https://asciinema.org/a/596950) | [CY](https://asciinema.org/a/596416)<br />[CY](./docs/resources/asciinema/snapshot_informix_null.ascii.cast.gif) | [CY](https://asciinema.org/a/596952) | [CY](https://asciinema.org/a/596953) | [CY](https://asciinema.org/a/596955) | [CY](./docs/resources/asciinema/snapshot_informix_s2.ascii.cast.gif) | [CY](https://asciinema.org/a/596415) |   | [CY](./docs/resources/asciinema/snapshot_informix_sqlserver.ascii.cast.gif) |  
mariabd | [CY](https://asciinema.org/a/599290) |   |   |   |   |   |   |   |   |   |   |   |   |  
mysql | [CY](./docs/resources/asciinema/snapshot_mysql_cockroach.ascii.cast.gif) | [CY](https://asciinema.org/a/597662) | [CY](https://asciinema.org/a/596940) | [CY](https://asciinema.org/a/596938)<br />[CY](./docs/resources/asciinema/snapshot_mysql_minio.ascii.cast.gif) | [CY](https://asciinema.org/a/596941) | [CY](https://asciinema.org/a/596942)<br />[CY](./docs/resources/asciinema/snapshot_mysql_null.ascii.cast.gif) | [CY](https://asciinema.org/a/596943) | [CY](https://asciinema.org/a/596937) | [CY](https://asciinema.org/a/596948) | [CY](./docs/resources/asciinema/snapshot_mysql_s2.ascii.cast.gif) | [CY](https://asciinema.org/a/M27aYd5QkOStjN80Pdqx2hBCc) |   | [CY](./docs/resources/asciinema/snapshot_mysql_sqlserver.ascii.cast.gif) |  
oracle |   |   | [CY](https://asciinema.org/a/596635) | [CY](https://asciinema.org/a/596638) | [CY](https://asciinema.org/a/596642) | [CY](https://asciinema.org/a/596643) | [CY](https://asciinema.org/a/596958) | [CY](https://asciinema.org/a/596641) | [CY](https://asciinema.org/a/596957) |   | [CY](https://asciinema.org/a/596634) |   |   | [](https://youtu.be/nKqncxWjRvM)
oraee | [CY](./docs/resources/asciinema/snapshot_oraee_cockroach.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_oraee_minio.ascii.cast.gif) |   | [CY](./docs/resources/asciinema/snapshot_oraee_null.ascii.cast.gif) |   |   |   | [CY](./docs/resources/asciinema/snapshot_oraee_s2.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_oraee_sqlserver.ascii.cast.gif) |  
pg | [CY](./docs/resources/asciinema/snapshot_pg_cockroach.ascii.cast.gif) |   | [CY](https://asciinema.org/a/596959) | [CY](https://asciinema.org/a/596960)<br />[CY](./docs/resources/asciinema/snapshot_pg_minio.ascii.cast.gif) | [CY](https://asciinema.org/a/596962) | [CY](https://asciinema.org/a/596963)<br />[CY](./docs/resources/asciinema/snapshot_pg_null.ascii.cast.gif) |   | [CY](https://asciinema.org/a/596961) |   | [CY](./docs/resources/asciinema/snapshot_pg_s2.ascii.cast.gif) | [CY](https://asciinema.org/a/596966) |   | [CY](./docs/resources/asciinema/snapshot_pg_sqlserver.ascii.cast.gif) |  
single store | [CY](./docs/resources/asciinema/snapshot_s2_cockroach.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_s2_minio.ascii.cast.gif) |   | [CY](./docs/resources/asciinema/snapshot_s2_null.ascii.cast.gif) |   |   |   | [CY](./docs/resources/asciinema/snapshot_s2_s2.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_s2_sqlserver.ascii.cast.gif) |  
sql edge | [CY](./docs/resources/asciinema/snapshot_sqledge_cockroach.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_sqledge_minio.ascii.cast.gif) |   | [CY](./docs/resources/asciinema/snapshot_sqledge_null.ascii.cast.gif) |   |   |   | [CY](./docs/resources/asciinema/snapshot_sqledge_s2.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_sqledge_sqlserver.ascii.cast.gif) |  
sql server | [CY](https://asciinema.org/a/599286)<br />[CY](./docs/resources/asciinema/snapshot_sqlserver_cockroach.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_sqlserver_minio.ascii.cast.gif) |   | [CY](./docs/resources/asciinema/snapshot_sqlserver_null.ascii.cast.gif) |   |   |   | [CY](./docs/resources/asciinema/snapshot_sqlserver_s2.ascii.cast.gif) |   |   | [CY](./docs/resources/asciinema/snapshot_sqlserver_sqlserver.ascii.cast.gif) |  
sybase ase | [CY](https://asciinema.org/a/599284) |   | [CY](https://asciinema.org/a/599184) | [CY](https://asciinema.org/a/599186) | [CY](https://asciinema.org/a/599187) | [CY](https://asciinema.org/a/599193) |   | [CY](https://asciinema.org/a/599192) | [CY](https://asciinema.org/a/599191) | [CY](https://asciinema.org/a/599280) |   | [CY](https://asciinema.org/a/599195) | [CY](https://asciinema.org/a/599194) | [CY](https://asciinema.org/a/599281)

## Full Replication CLI Demos

full | databricks | Google Cloud Storage | Google CloudSQL MySQL | kafka | minio | mongodb | mysql | null | oracle | pg | redis stream | singlestore | snowflake | sqlserver
-- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | --
db2 luw |   |   |   |   |   |   | [TPCC YCSB](https://asciinema.org/a/597115) |   | [TPCC YCSB](https://asciinema.org/a/597114) | [TPCC YCSB](https://asciinema.org/a/597116) |   |   |   |  
IBM Db2 |   |   |   |   |   |   |   |   | [various](https://youtu.be/TYXJhwjXIms) |   |   |   |   |  
informix |   |   |   | [YCSB](https://asciinema.org/a/596970) | [YCSB](https://asciinema.org/a/596971) |   | [YCSB](https://asciinema.org/a/596959) | [YCSB](https://asciinema.org/a/596973) | [YCSB](https://asciinema.org/a/46fe1mFKWyIvRhSaqEnIrGacN),[YCSB](https://asciinema.org/a/596974) | [YCSB](https://asciinema.org/a/596418),[YCSB](https://asciinema.org/a/596975) | [YCSB](https://asciinema.org/a/596977) |   | [YCSB](https://asciinema.org/a/596402) |  
mongodb |   |   |   |   |   | [](https://youtu.be/33TBVqFDuCk) |   |   |   |   |   |   |   |  
mysql | [various](https://youtu.be/ytKpvWJi3Lo) | [TPCC YCSB](https://asciinema.org/a/597274) | [TPCC YCSB](https://asciinema.org/a/597663) | [TPCC YCSB](https://asciinema.org/a/596184) | [TPCC YCSB](https://asciinema.org/a/596183) |   | [TPCC YCSB](https://asciinema.org/a/596980),[TPCC & YCSB](https://asciinema.org/a/597442),[TPCC & YCSB](https://asciinema.org/a/597443) | [TPCC YCSB](https://asciinema.org/a/596979) | [TPCC YCSB](https://asciinema.org/a/596981) | [TPCC YCSB](https://asciinema.org/a/587771) | [TPCC YCSB](https://asciinema.org/a/596982) | [various](https://youtu.be/x9_ccBjf1EQ) | [](https://asciinema.org/a/8CO7i2Ecj8jPdSh4mFOfDbm9F) |  
oracle | [](https://youtu.be/SAc7v7ZspPw) |   |   | [TPCC YCSB](https://asciinema.org/a/596653),[TPCC YCSB](https://asciinema.org/a/596984) | [TPCC YCSB](https://asciinema.org/a/596652) | [various](https://youtu.be/sK3tZmpb1YI),[](https://youtu.be/dTChAc9GpSc) | [TPCC YCSB](https://asciinema.org/a/596647) | [TPCC YCSB](https://asciinema.org/a/596644) | [various](https://youtu.be/sVhraqx095g) | [TPCC YCSB](https://asciinema.org/a/596651) |   | [various](https://youtu.be/x9_ccBjf1EQ) | [YCSB](https://asciinema.org/a/596633),[](https://youtu.be/XRAFNrhv5cI) |  
pg |   |   |   | [YCSB](https://asciinema.org/a/598279) | [YCSB](https://asciinema.org/a/598285) |   | [YCSB](https://asciinema.org/a/598277) |   | [X](https://asciinema.org/a/598282) | [YCSB](https://asciinema.org/a/598284) | [YCSB](https://asciinema.org/a/598286) |   |   | [YCSB](https://asciinema.org/a/598281)
snowflake |   |   |   |   |   |   |   |   |   |   |   |   |   | [various](https://youtu.be/8sn8KJfh9ns)

# Group

- [Source](./docs/source/README.md)
- [Target](./docs/targets/README.md)

