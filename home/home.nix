{
  config,
  pkgs,
  ...
}:
{
  # 注意修改这里的用户名与用户目录
  home.username = "ie";
  home.homeDirectory = "/home/ie";

  # 直接将当前文件夹的配置文件，链接到 Home 目录下的指定位置
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # 递归将某个文件夹中的文件，链接到 Home 目录下的指定位置
  # home.file."bot/ks" = {
  #   source = ./koishi;
  #   recursive = true;   # 递归整个文件夹
  # };

  # 直接以 text 的方式，在 nix 配置文件中硬编码文件内容
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # 设置鼠标指针大小以及字体 DPI（适用于 4K 显示器）
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # 通过 home.packages 安装一些常用的软件
  # 这些软件将仅在当前用户下可用，不会影响系统级别的配置
  # 建议将所有 GUI 软件，以及与 OS 关系不大的 CLI 软件，都通过 home.packages 安装
  home.packages = with pkgs; [
    helix
    qutebrowser
    zathura
    mpv
    imv
    rustdesk-flutter
    btrfs-progs
    polkit
    polkit_gnome
    adwaita-qt
    adwaita-qt6
    libsForQt5.qt5ct
    trash-cli
    flatpak
    gnome-software
    # 如下是我常用的一些命令行工具，你可以根据自己的需要进行增删
    neofetch
    nnn # terminal file manager

    # 文档
    libreoffice-fresh

    # 图片
    gimp-with-plugins

    # OCR
    gImageReader

    # 性能监看
    radeontop
    htop
    iotop # io monitoring
    iftop # network monitoring
    nvitop

    # 桌面
    rofi-wayland
    waybar
    grim
    hyprpaper
    flatpak

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder

    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc # it is a calculator for the IPv4/v6 addresses

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    hugo # static site generator
    glow # markdown previewer in terminal

    btop # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

  # git 相关配置
  programs.git = {
    enable = true;
    userName = "initialencounter";
    userEmail = "2911583893@qq.com";
  };

  # 启用 starship，这是一个漂亮的 shell 提示符
  programs.starship = {
    enable = true;
  };

  # alacritty - 一个跨平台终端，带 GPU 加速功能
  programs.alacritty = {
    enable = true;
    # 自定义配置
    settings = {
      import = [ pkgs.alacritty-theme.citylights ];
    };
  };

  programs.gpg.enable = true;
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
