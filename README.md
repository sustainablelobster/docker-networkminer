# docker-networkminer

A Docker container for [mammo0's NetworkMiner CLI fork](https://github.com/mammo0/networkminer-cli).

## Building

```
docker build -t networkminer .
```

## Usage

```
docker run --rm -v <FULL PATH OF PCAP FILE>:/input.pcap \
    -v <FULL PATH OF OUTPUT DIR>/outdir networkminer
```