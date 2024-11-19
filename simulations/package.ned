package demo1.simulations;

import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network Network
{
    @display("bgb=1041,399");
    submodules:
        server: StandardHost {
            @display("p=299,286");
        }
        client: StandardHost {
            @display("p=752,286");
        }
        Configurator: Ipv4NetworkConfigurator {
            @display("p=455.88123,95.35625");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
}

