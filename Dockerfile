FROM jasonmorganson/dotfiles

ARG USER=airone
ARG NAME="AirOne01"
ARG EMAIL=popgthyrd@gmail.com

ENV USER=$USER \
    HOME=/home/$USER \
    SHELL=/usr/bin/zsh \
    HEADLESS=true

USER $USER

WORKDIR $HOME

COPY . .

RUN ./install.sh

ENTRYPOINT [ "/usr/bin/zsh", "--login" ]
