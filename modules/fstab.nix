{
	fileSystems."/home" = {
		device = "/dev/disk/by-uuid/8959be9d-3490-40f3-b1e4-35094b01c1d7";
		fsType = "btrfs";
		options = [ "subvol=@home" "noatime" "compress=zstd"];
	};
}
