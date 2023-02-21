FROM greyltc/archlinux-aur:yay

run curl 'https://archlinux.org/mirrorlist/?country=DE&protocol=https&ip_version=4' | sed 's:#Server:Server:' > /tmp/mirrorlist \
    && rankmirrors -n 5 /tmp/mirrorlist > /etc/pacman.d/mirrorlist

run echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen \
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
    openssh \
    pandoc \
    pdf2svg \
    perl-clone \
    perl-file-homedir \
    perl-yaml-tiny \
    ripgrep \
    shellcheck \
    shfmt \
    stow \
    texlive-bibtexextra \
    texlive-bin \
    texlive-core \
    texlive-fontsextra \
    texlive-langextra \
    texlive-pictures \
    texlive-science \
    tmux \
    tree \
    vim \
    zathura-pdf-poppler

RUN aur-install tllocalmgr-git

