{ pkgs, ... }:
# Edit this configuration file to define what should be installed on

{
    users.mutableUsers = false;
    users.users.ie = {
        isNormalUser = true;
        shell = pkgs.fish;
        # passwd ie
        hashedPassword = "$6$wNg8ktO.5TVbKM1/$lvfPrHuDMKVO/LiRs1BFmW74JYYL4QqiZJep7PnSvEmgUWcY/ggLlIrM9tcvambsF1kuWJb3NHgaUnf3xt6pE1";
        openssh.authorizedKeys.keys = [
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDvhKzQtlHCtvU2Up/yf/NjD2E4vjRkEuJYa1p2P0jDeCtocG1arl7l4wWkVqCeN3yn3LNxD0i8pqvGCrdo6Vuy/4YJUUJcJqZaboYCNiP2GjUJkcd7W+skKOp/tWOHpGY0SxbSW1Qg/N2F6DlhwblspRl1qwImD4p5wqJATAPI1SzWUs9CrqjS843cxk7t/Qiw+npfzpy+afq5ywud0ZN2KC5EYM2qjSLkD0jLtoCVv/uC2faCtPo4bWu0z7WFCzezxvbzUjNATTmvVD9x+NsONnsmB7UqRO/SGTim/zWgECcuvjdm11KDIrCJ+pK1urfgaGN8bWnX9IYAJeOUwYdOi4pXqVO80IU5PUFuuvyHeo70Rta+hADBSzcoH4snh90CnSaP/+rk1u/7LD3UVy3ol6xK2CKktDjO4OsB+YF0NfBmkLgjlau8E1jYQigPPoOqWXo60JZ8divkdhw0pmfSI4HrA2iP1Zk20mPfCFbYAgqNVM7f/TywzxysC3sz8t8= 29115@ie"
        ];
        extraGroups = [
        "wheel"
        "users"
        "networkmanager"
        ]; # Enable ‘sudo’ for the user.
    };
    users.users.root = {
        shell = pkgs.fish;
        # passwd ie
        openssh.authorizedKeys.keys = [
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDvhKzQtlHCtvU2Up/yf/NjD2E4vjRkEuJYa1p2P0jDeCtocG1arl7l4wWkVqCeN3yn3LNxD0i8pqvGCrdo6Vuy/4YJUUJcJqZaboYCNiP2GjUJkcd7W+skKOp/tWOHpGY0SxbSW1Qg/N2F6DlhwblspRl1qwImD4p5wqJATAPI1SzWUs9CrqjS843cxk7t/Qiw+npfzpy+afq5ywud0ZN2KC5EYM2qjSLkD0jLtoCVv/uC2faCtPo4bWu0z7WFCzezxvbzUjNATTmvVD9x+NsONnsmB7UqRO/SGTim/zWgECcuvjdm11KDIrCJ+pK1urfgaGN8bWnX9IYAJeOUwYdOi4pXqVO80IU5PUFuuvyHeo70Rta+hADBSzcoH4snh90CnSaP/+rk1u/7LD3UVy3ol6xK2CKktDjO4OsB+YF0NfBmkLgjlau8E1jYQigPPoOqWXo60JZ8divkdhw0pmfSI4HrA2iP1Zk20mPfCFbYAgqNVM7f/TywzxysC3sz8t8= 29115@ie"
        ];
    };
}
