{
  # 允许非自由软件
  nixpkgs.config.allowUnfree = true;

  nix.settings = {
    # 镜像站
    substituters = [
      "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    ];

    # 实验性功能
    experimental-features = [
      "nix-command"
      "flakes"
      "ca-derivations"
    ];
  };
}