{ pkgs, config, ... }:
# Edit this configuration file to define what should be installed on

{
    users.mutableUsers = false;
    users.users.ie = {
        isNormalUser = true;
        shell = pkgs.fish;
        # passwd ie
        hashedPassword = "$6$u1y76L8rVLS9CSgd$QdUINO59HxUOqz3ACcC7lZl9OtRsUqURqAZCjxkvYopseGxV7xoF1LRp/cNL.TygQnx8ReWpdUuR0EX9u7ODr/";
        openssh.authorizedKeys.keys = [
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDvhKzQtlHCtvU2Up/yf/NjD2E4vjRkEuJYa1p2P0jDeCtocG1arl7l4wWkVqCeN3yn3LNxD0i8pqvGCrdo6Vuy/4YJUUJcJqZaboYCNiP2GjUJkcd7W+skKOp/tWOHpGY0SxbSW1Qg/N2F6DlhwblspRl1qwImD4p5wqJATAPI1SzWUs9CrqjS843cxk7t/Qiw+npfzpy+afq5ywud0ZN2KC5EYM2qjSLkD0jLtoCVv/uC2faCtPo4bWu0z7WFCzezxvbzUjNATTmvVD9x+NsONnsmB7UqRO/SGTim/zWgECcuvjdm11KDIrCJ+pK1urfgaGN8bWnX9IYAJeOUwYdOi4pXqVO80IU5PUFuuvyHeo70Rta+hADBSzcoH4snh90CnSaP/+rk1u/7LD3UVy3ol6xK2CKktDjO4OsB+YF0NfBmkLgjlau8E1jYQigPPoOqWXo60JZ8divkdhw0pmfSI4HrA2iP1Zk20mPfCFbYAgqNVM7f/TywzxysC3sz8t8= 29115@ie"
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0XBu9RMC4XBqKB1T87j7rHWcWkuYeP07ouTiGfHKDZ4B8+nb8cqeBTrDkr6PmKRZpUEt3xfvSpXb4s9VRvJCmPyCFld3L93w+ca+E5zcMXecSF1H/QmNPdeV66j9tWiptqqMetJ2sjDOIdQBoi2GN3vb8dYGIgesgyp/ZvhLrKu2TV3AqRun4q1X9L7+26vxUEYNv5JBLtN4CmvCAob8qkcoUhA1k6bl61RIvl7UtgaDFoioTq5fLYv8hX9Qa2FlnUgCbvCnb+h4uhobcmQDvtPrktjYw7FzsmqDmnLYU0riUya9K8lsSBpNm12PxjrxaI/eRjrkbf7FixYEasPCSqEaNyd05uMo9hdwEHfkiO3tK5RZ7BCFThhzAdcrlnLtklCDxEnjcYBRoCdTdvIkHgDzQoKhzEoGMcB0Xd7nPmXt18jKwVg/Q4iz0x3TG4LM4Tprt8bZlRKLmpWYaLzNxGvehnDccb1ms/GgdlUObFsEF5OX09YbxrooPAVOUuSU= dgm-4@DESKTOP-3MA7VLD"
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzN2GGHjTvnKJGYvVtez8eCvW8gTk1pjIY88L8otp3Z64fKWP9e2VD2IX2Xf4qM4gZ2Skkd+Um0xhlL5SaAoQsamSQzh2imXoKJHMDgeNuYzWWETOZByuqttI6rox1T+PNFHz8S8iZaZz6oWCrU+m95OJL6QE653/8zxPIpTLdcae6DMi5KVAr8KWoxaAu2cEk1XuB1uYXiWP+1q1NBIiRObAiVhhDG5QMWOK4FhHgoD09KrA8IVDvYJnq02+4RdrRLIEAl3oXJLcucLyBpV4ORIYq9HiUgNGdqTYZnumvUVSEAI//M8F3swrgu6gjm1jxYoQKpjJ2wOeUck1qugQl41h/M6cAXdL8jRLDPKHU4fI99BEll3EcJDuCvRZu5AhYgI6ToVwMEgeNp5rTgXS/CviV9+Ya5oRtuH6FnEL5RnWZff+dg7cQ7GfMX4MDXw1MtF/yuiUy60gYRj9DFOruHZyz9WW0Caqf66ixYAxMBhWwFvhNMkRx2v8osEmTs00= u0_a328@localhost"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFfTEtsWX9jD80sTJGUJpeu4V0pawjFPn3BtLzGjIZze u0_a316@localhost"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKyAPubZ+oTEs6iBThGmwisLteJuFUdH94ygyeiV8L+t ie@ie-pc"
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVtMERQxiBqRW4ANWxjbGgQXP+oPSOeHRbgKmDcWp7hEDUXDFrqcHzJmhi0mtNaQDssEpc9iax3xN4FgeYJ/9OzeWkUuxB1bMFAHGewiH9UbDwCXtEUIOjfdUR0vwYsUETQ8Y33oCFpHZE4YL+xLE8UOQ8qQjwUDCZ/0+Wn3FYf6qPvOyiFv3QMFtw9RClFW16XT6OkjnxpG3HQDQH+fDYLJCxgEzj9llUSUPVar1IuGt2oXE+kYRivlKw2HAKDLLiKQm9LRdpJWiLvY2mqxxDQ7R5+FEoCuCtN6GIg0/PWIDvqf6MSMNTVF8hhS26m0+shFFE2fBgGNz2iHFYLaiDs5kHj37gF9d39Pk35B3C32426nqKNdOq2EhnCfkZtVVxRZNbxSV10Ido5yDBtY1ppGlCK3SGI2toND0i3bOfPxz8bj7rJgl2NyWtIayQreoaN/SA4/ismllZQVxvdxcAdyRj/NIi8uYSEdRHoOtwREqxikZicHv+JLaRADKBnu0= z@zdeMacBook-Pro.local"
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
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0XBu9RMC4XBqKB1T87j7rHWcWkuYeP07ouTiGfHKDZ4B8+nb8cqeBTrDkr6PmKRZpUEt3xfvSpXb4s9VRvJCmPyCFld3L93w+ca+E5zcMXecSF1H/QmNPdeV66j9tWiptqqMetJ2sjDOIdQBoi2GN3vb8dYGIgesgyp/ZvhLrKu2TV3AqRun4q1X9L7+26vxUEYNv5JBLtN4CmvCAob8qkcoUhA1k6bl61RIvl7UtgaDFoioTq5fLYv8hX9Qa2FlnUgCbvCnb+h4uhobcmQDvtPrktjYw7FzsmqDmnLYU0riUya9K8lsSBpNm12PxjrxaI/eRjrkbf7FixYEasPCSqEaNyd05uMo9hdwEHfkiO3tK5RZ7BCFThhzAdcrlnLtklCDxEnjcYBRoCdTdvIkHgDzQoKhzEoGMcB0Xd7nPmXt18jKwVg/Q4iz0x3TG4LM4Tprt8bZlRKLmpWYaLzNxGvehnDccb1ms/GgdlUObFsEF5OX09YbxrooPAVOUuSU= dgm-4@DESKTOP-3MA7VLD"
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzN2GGHjTvnKJGYvVtez8eCvW8gTk1pjIY88L8otp3Z64fKWP9e2VD2IX2Xf4qM4gZ2Skkd+Um0xhlL5SaAoQsamSQzh2imXoKJHMDgeNuYzWWETOZByuqttI6rox1T+PNFHz8S8iZaZz6oWCrU+m95OJL6QE653/8zxPIpTLdcae6DMi5KVAr8KWoxaAu2cEk1XuB1uYXiWP+1q1NBIiRObAiVhhDG5QMWOK4FhHgoD09KrA8IVDvYJnq02+4RdrRLIEAl3oXJLcucLyBpV4ORIYq9HiUgNGdqTYZnumvUVSEAI//M8F3swrgu6gjm1jxYoQKpjJ2wOeUck1qugQl41h/M6cAXdL8jRLDPKHU4fI99BEll3EcJDuCvRZu5AhYgI6ToVwMEgeNp5rTgXS/CviV9+Ya5oRtuH6FnEL5RnWZff+dg7cQ7GfMX4MDXw1MtF/yuiUy60gYRj9DFOruHZyz9WW0Caqf66ixYAxMBhWwFvhNMkRx2v8osEmTs00= u0_a328@localhost"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFfTEtsWX9jD80sTJGUJpeu4V0pawjFPn3BtLzGjIZze u0_a316@localhost"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKyAPubZ+oTEs6iBThGmwisLteJuFUdH94ygyeiV8L+t ie@ie-pc"
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVtMERQxiBqRW4ANWxjbGgQXP+oPSOeHRbgKmDcWp7hEDUXDFrqcHzJmhi0mtNaQDssEpc9iax3xN4FgeYJ/9OzeWkUuxB1bMFAHGewiH9UbDwCXtEUIOjfdUR0vwYsUETQ8Y33oCFpHZE4YL+xLE8UOQ8qQjwUDCZ/0+Wn3FYf6qPvOyiFv3QMFtw9RClFW16XT6OkjnxpG3HQDQH+fDYLJCxgEzj9llUSUPVar1IuGt2oXE+kYRivlKw2HAKDLLiKQm9LRdpJWiLvY2mqxxDQ7R5+FEoCuCtN6GIg0/PWIDvqf6MSMNTVF8hhS26m0+shFFE2fBgGNz2iHFYLaiDs5kHj37gF9d39Pk35B3C32426nqKNdOq2EhnCfkZtVVxRZNbxSV10Ido5yDBtY1ppGlCK3SGI2toND0i3bOfPxz8bj7rJgl2NyWtIayQreoaN/SA4/ismllZQVxvdxcAdyRj/NIi8uYSEdRHoOtwREqxikZicHv+JLaRADKBnu0= z@zdeMacBook-Pro.local"
        ];
    };
}
