FROM greyltc/archlinux-aur:yay

run echo 'Server = https://ftp.fau.de/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm \
    bat \
    biber \
    emacs-nativecomp \
    fd \
    fzf \
    git \
    git-delta \
    gpa \
    graphviz \
    htop \
    imagemagick \
    openssh \
    pdf2svg \
    perl-clone \
    perl-file-homedir \
    perl-yaml-tiny \
    ripgrep \
    snap-sync \
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

run echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen \
    && echo LANG=en_US.UTF-8 > /etc/locale.conf \
    && locale-gen
