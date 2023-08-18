FROM greyltc/archlinux-aur:yay

RUN curl 'https://archlinux.org/mirrorlist/?protocol=https&ip_version=4' | sed 's:#Server:Server:' > /tmp/mirrorlist \
    && rankmirrors -n 5 /tmp/mirrorlist | tee /etc/pacman.d/mirrorlist

RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen \
    && echo LANG=en_US.UTF-8 > /etc/locale.conf \
    && locale-gen

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm \
    bat \
    biber \
    cmake \
    emacs-nativecomp \
    fd \
    fzf \
    git \
    git-delta \
    gpa \
    graphviz \
    htop \
    hunspell \
    hunspell-de \
    hunspell-en_us \
    imagemagick \
    jre-openjdk \
    libnotify \
    libpulse \
    openssh \
    pandoc \
    pdf2svg \
    perl-clone \
    perl-file-homedir \
    perl-yaml-tiny \
    python3 \
    ripgrep \
    shellcheck \
    shfmt \
    stow \
    tmux \
    tree \
    vim \
    watchexec \
    zathura-pdf-poppler && \
    pacman -Scc --noconfirm

RUN aur-install tllocalmgr-git && \
    pacman -Scc --noconfirm
