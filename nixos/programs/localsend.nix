{
    programs.localsend = {
        enable = true;
    };
    networking.firewall = let port = 53317; in {
        allowedTCPPorts = [ port ];
        allowedUDPPorts = [ port ];
    };
}