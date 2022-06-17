FROM mono:6.12.0.122

RUN \
    apt-get update && \
    apt-get install -y unzip && \
    curl -L -o /tmp/networkminer-cli.zip \
        https://github.com/mammo0/networkminer-cli/releases/download/v2.7.1_r1/networkminer-cli.zip && \
    unzip /tmp/networkminer-cli.zip -d /networkminer && \
    rm -rf /tmp/networkminer-cli.zip && \
    mkdir /outdir && \
    ln -s /outdir /networkminer/AssembledFiles && \
    apt-get remove -y unzip && \
    apt-get autoremove

WORKDIR /networkminer
ENTRYPOINT ["mono", "/networkminer/NetworkMiner.exe"]
CMD ["/input.pcap"]
