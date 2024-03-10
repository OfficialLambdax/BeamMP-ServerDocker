FROM archlinux:base

# IMPORTANT
# you have to define a lua version that the beammp server has been build with.
# "pamac search lua" should return plenty of lua packages eg. lua53 is lua 5.3
# Inside server lua you can run print(_VERSION) to get the lua version the server is compiled with
RUN pacman -Syu --noconfirm lua53

# The server may not be able to find the lua libraries even if they are installed, like it may tell that it cannot find "liblua5.3.so.0". This here creates this file as a symlink to the installed libary
RUN ln -s /usr/lib64/liblua.so.5.3.6 /usr/lib64/liblua5.3.so.0



RUN pacman -S --noconfirm netcat curl wget

COPY ./beammp /beammp/
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x /beammp/BeamMP-Server

WORKDIR /beammp
RUN bash /entrypoint.sh
STOPSIGNAL SIGKILL
ENTRYPOINT ["./BeamMP-Server"]