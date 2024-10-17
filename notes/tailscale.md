## 生成ageKey

```shell
age-keygen -o ageKeyFile.txt
```

## 加密secrets.yaml

```shell
sops --age <age 私钥> --encrypt secrets.yaml > secrets.enc.yaml
                                ^ 密码明文      ^ 加密后的文件
```

## 解密

```nix
{
  sops = {
    age.keyFile = "/root/.config/sops/age/keys.txt";
    secrets.tailscaleAuthKey = {
      format = "yaml";
      sopsFile = ../secrets.enc.yaml;
    };
  };
  # 解密后的明文密码值文件
  config.sops.secrets.tailscaleAuthKey.path
}
```

## 配置

参考 https://tailscale.com/blog/nixos-minecraft
[示例](../nixos/programs/tailscale.nix)