FROM marctv/minecraft-papermc-server:1.21.8

COPY ./plugins /data/plugins
COPY ./witherhope-necropolis/encounters /data/plugins/MythicMobs/config
COPY ./witherhope-necropolis/achievements /data/plugins/MythicMobs/config

LABEL wn-version="0.1-beta"
LABEL wn-description="Customized paper mc server Docker image with neccessary dependencies pre installled"
LABEL "io.ghcr.vendor"="Gridness"
