package inet.tests.ethernet;

import inet.common.scenario.ScenarioManager;
import inet.linklayer.ethernet.EtherBus;
import inet.node.ethernet.Eth10M;
import inet.node.ethernet.EtherHost2;
import inet.physicallayer.common.packetlevel.WireJunction;
import ned.DatarateChannel;

//
// Sample Ethernet LAN: hosts connected via bus
//

network HostsWithBus
{
    submodules:
        hostA: EtherHost2 {
            parameters:
                @display("p=72,80");
        }
        hostB: EtherHost2 {
            parameters:
                @display("p=334,80");
        }
        hostC: EtherHost2 {
            parameters:
                @display("p=334,80");
        }
        tap1: WireJunction {
            parameters:
                @display("p=250,180");
        }
        tap2: WireJunction {
            parameters:
                @display("p=250,280");
        }
        tap3: WireJunction {
            parameters:
                @display("p=250,380");
        }
        scenarioManager: ScenarioManager {
            parameters:
                script = default(xml("<empty/>"));
                @display("p=184,180");
        }
    connections:
        tap1.port++ <--> DatarateChannel <--> hostA.ethg;
        tap2.port++ <--> DatarateChannel <--> hostB.ethg;
        tap3.port++ <--> DatarateChannel <--> hostC.ethg;
        tap1.port++ <--> DatarateChannel <--> tap2.port++;
        tap2.port++ <--> DatarateChannel <--> tap3.port++;
}

