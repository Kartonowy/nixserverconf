{ config, lib, pkgs, ... }:

{
	networking = {
		useDHCP = false;
		networkmanager.enable = false;
		resolvconf.enable = false;
		interfaces = {
			enp3s0 = { 
				ipv4.addresses = [{
				address = "192.168.1.101";
				prefixLength = 24;
			}];
			};
		};
		defaultGateway = "192.168.1.1";
		nameservers = [ "192.168.1.1" "1.1.1.1" "8.8.8.8" ];
	};
}

