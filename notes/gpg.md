# nix-config

```nix
environment.systemPackages = with pkgs; [
  gnupg
  pinentry
];
```

## set pinentry

```shell
vi ~/.gnupg/gpg-agent.conf
## wirte
pinentry-program /run/current-system/sw/bin/pinentry
## restart pinentry
gpgconf --kill gpg-agent
## 切换到bash
bash
export GPG_TTY=$(tty)
```

## sign
