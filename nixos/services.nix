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

	# Enable OpenGL
	hardware.graphics.enable = true;
	programs.fish.enable = true;
	services.fstrim = {
		enable = true;
		interval = "tuesday";  
	};

	# Enable the X11 windowing system.
	services.xserver = {
			enable = true;
			videoDrivers = [ "amdgpu" ];  # 使用amdgpu驱动
	};
	services.displayManager = {
		sddm.enable = true;
		autoLogin.enable = true;
    autoLogin.user = "ie";
	};
}
