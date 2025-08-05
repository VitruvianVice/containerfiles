FROM quay.io/fedora/fedora-toolbox:latest
LABEL description="Fedora Toolbox base with Zsh as default shell"

# --------------------------------------------------
# DNF PACKAGES
# ---

# Enable copr repos
COPY copr-repos /
RUN xargs -a /copr-repos -I{} dnf copr enable -y {}

# Install groups
RUN dnf -y group install development-tools

# Install Extra Packages
# Remove dependency-installations and disentangle group installations:
# $ dnf repoquery --userinstalled --qf "%{name} %{reason}\n" | awk '$2 == "User" { print $1 }' | sort > dnf-packages
# This list includes packages that were shipped as part of the image, we can remove those:
# $ podman run --rm quay.io/fedora/fedora-toolbox:latest rpm -qa --qf "%{name}\n" | sort > base-packages
COPY dnf-packages /
COPY base-packages /
RUN dnf -y install $(comm -23 dnf-packages base-packages)

# --------------------------------------------------
# Set Zsh as the default shell for the root user
SHELL ["/usr/bin/zsh", "-c"]
