{ ... }:

{
    services.openssh.enable = true;
    # Configure keymap in X11
    services.xserver.xkb.layout = "us";
    services.xserver.xkb.options = "eurosign:e,caps:escape";

    # Enable sound.
    services.pipewire = {
        enable = true;
        pulse.enable = true;
    };

    # Enable the X11 windowing system.
    services.xserver  = {
        enable = true;
        desktopManager.plasma5.enable = true;
    };
    services.displayManager.sddm.enable = true;
    programs.fish.enable = true;
}
