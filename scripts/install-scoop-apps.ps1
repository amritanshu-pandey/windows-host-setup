# Add Buckets
scoop bucket add extras
scoop bucket add jetbrains

# Install CLI Apps
scoop install `
    git `
    gpg `
    neovim `
    jq `
    pwsh `
    extras/vifm `
    kubectl `
    starship

# Install GUI Apps
scoop install `
    jetbrains/PyCharm `
    extras/vscode `
    extras/insomnia `
    extras/windows-terminal `
    7zip `
    extras/discord `
    extras/cryptomator `

# Install programming languages
scoop install `
    python `
    rustup-msvc `

# Fonts
scoop install `
    hack-font `
