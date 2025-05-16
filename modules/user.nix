{pkgs, ...}: {
	programs.zsh.enable = true;

	users = {
		defaultUserShell = pkgs.zsh;

		users.mrfufl4ik = {
			isNormalUser = true;
			extraGroups = [ "wheel" "networkmanager" "input" "video"];
		};
    users.mrfufl4ik.openssh.authorizedKeys.keys = [
      "SHA256:mit26tLJzxog9eza741I2s3OiZpsdSRl/c62kGQ9HzI"
    ];
	};
}
