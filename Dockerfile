FROM archlinux:base
RUN ["pacman","-Syu","--noconfirm","netcat","curl","wget"]

# IMPORTANT
# you have to define a lua version that the beammp server has been build with.
# "pamac search lua" should return plenty of lua packages eg. lua53 is lua 5.3
# Inside server lua you can run print(_VERSION) to get the lua version the server is compiled with
RUN ["pacman","-Sy","--noconfirm","lua"]


COPY ./beammp /beammp/
COPY ./entrypoint.sh /entrypoint.sh
WORKDIR /beammp
ENTRYPOINT ["/entrypoint.sh"]
