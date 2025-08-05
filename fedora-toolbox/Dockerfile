FROM quay.io/fedora/fedora-toolbox:latest
LABEL description="Fedora Toolbox base with Zsh as default shell"

# --------------------------------------------------
# DNF PACKAGES

RUN dnf group install development-tools
# Remove dependency-installations and disentangle group installations:
# $ dnf repoquery --userinstalled --qf "%{name} %{reason}\n" | awk '$2 == "User" { print $1 }' | sort > dnf-packages
# This list includes packages that were shipped as part of the image, we can remove those:
# $ podman run --rm quay.io/fedora/fedora-toolbox:latest rpm -qa --qf "%{name}\n" | sort > base-packages
COPY dnf-packages /
COPY base-packages /
RUN dnf -y install $(comm -23 dnf-packages base-packages)

COPY copr-repos /
RUN xargs -a /copr-repos -I{} dnf copr enable -y {}

# --------------------------------------------------
# Set Zsh as the default shell for the root user
SHELL ["/usr/bin/zsh", "-c"]
