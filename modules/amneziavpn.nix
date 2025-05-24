{pkgs, unstable, ...}: {
  systemd.services.amneziavpn = {
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" ];
    serviceConfig = {
			Type = "oneshot";
			User = "root";
      ExecStart = ''${unstable.legacyPackages.${pkgs.system}.amnezia-vpn}/bin/AmneziaVPN-service'';	
		};
  };
}
