{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    config = {
      user = {
        name = "initialencounter";
        email = "2911583893@qq.com";
      };
      init = {defaultBranch = "main";};
      pull = {rebase = false;};
    };
  };
}
