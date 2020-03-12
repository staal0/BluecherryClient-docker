FROM ubuntu:16.04

COPY bluecherry-client_2.2.6-1_amd64.deb .

RUN apt-get update \
  && apt-get -y install libasound2 libgl1-mesa-glx libgl1 libjpeg8 libpng16-16 libpulse0 libqt4-dbus libqt4-declarative libqt4-network libqtcore4 libqtwebkit4 libva-drm1 libva-x11-1 libva1 libxinerama1 openssh-server \
  && rm -rf /var/lib/apt/lists/*

RUN dpkg -i bluecherry-client_2.2.6-1_amd64.deb

RUN rm bluecherry-client_2.2.6-1_amd64.deb

COPY bluecherry.conf /root/.config/bluecherry/

RUN export QT_GRAPHICSSYSTEM="native"

RUN export QT_X11_NO_MITSHM=1

CMD /usr/bin/bluecherry-client
