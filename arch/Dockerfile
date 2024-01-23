FROM greyltc/archlinux-aur:yay

RUN curl 'https://archlinux.org/mirrorlist/?protocol=https&ip_version=4&use_mirror_status=on?country=US' | sed 's:#Server:Server:' | grep -v '^#' | head -n 25 > /tmp/mirrorlist \
    && rankmirrors -n 5 /tmp/mirrorlist | tee /etc/pacman.d/mirrorlist

RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen \
    && echo LANG=en_US.UTF-8 > /etc/locale.conf \
    && locale-gen

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm \
    bat \
    biber \
    cmake \
    ctags \
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
    libnotify \
    libpulse \
    openssh \
    pandoc \
    parallel \
    pdf2svg \
    perl-clone \
    perl-file-homedir \
    perl-yaml-tiny \
    python3 \
    ripgrep \
    shellcheck \
    shfmt \
    stow \
    texlive-basic \
    texlive-bibtexextra \
    texlive-binextra \
    texlive-fontsextra \
    texlive-fontsrecommended \
    texlive-langgerman \
    texlive-latex \
    texlive-latexextra \
    texlive-latexrecommended \
    texlive-luatex \
    texlive-mathscience \
    texlive-pictures \
    texlive-plaingeneric \
    texlive-publishers \
    tmux \
    tree \
    vim \
    zathura-pdf-poppler && \
    pacman -Scc --noconfirm
