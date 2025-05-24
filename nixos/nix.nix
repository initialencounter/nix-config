{
  # 允许非自由软件
  nixpkgs.config.allowUnfree = true;

  nix.settings = {
    # 镜像站
    substituters = [
      "https://mirrors.cernet.edu.cn/nix-channels/store"
      "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    ];

    build-users-group = null;  # 禁用构建组检查
    sandbox = false;  # 可能需要同时禁用沙盒

    # 实验性功能
    experimental-features = [
      "nix-command"
      "flakes"
      "ca-derivations"
    ];
  };
}