{ hostName, ... }:
{
    networking = {
        inherit hostName;
        networkmanager.enable = true;
        firewall.allowedTCPPorts = [ 6881 ];
        firewall.allowedUDPPorts = [ 6881 ];
    };
}
