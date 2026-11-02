# APN

## APN connectivity to mobile networks (simplified version)

1. Cell phone opens mobile data → Sends a connection request to the operator's network with APN configuration.
2. The operator's core network (SGSN/MME) received APN → to find the corresponding gateway (GSSN/PGW) through DNS resolution.
3. According to APN, the gateway decides:
    * Internet connection to the public network (general Internet access)
    * Connect to Enterprise Network (private APN)
    * Distribution of IP, Qos (Quality of Service), Fee Rules, etc.

The connection succeeded in getting the IP address, starting the Internet.

| Role | Annotations |
|------------------|----------------------------------------------------------------------|
| Mark access path | GGSN/PGW equipment to which external network to connect (e.g. Internet, MMS, WAP, Enterprise Network, etc.) |
| Distribution IP Address | Determines whether the device acquires a public or private Internet IP, and the type of IP address (dynamic/static) |
| Decision on type of service | Distinguishing between ordinary Internet access, MMS, multimedia news, positioning services, etc. |
| Control security and route | Private network APN achieves data direct-to-business intranet, encrypted transmission, firewall isolation, etc. |
| Operator distinction | APN for each operator is different (e. g. cmnet, cmwap for mobile China, 3gnet, uniwap for China, ctnet, ctwap for China) |


Unable to use moving data (even if the signal is full). APN is the “entry point” for mobile network data services, which directly determines what network, speed, security, and how the equipment is billed. In most cases, the SIM card is automatically configured with the correct APN, but the change of cards, the change of equipment, the use of network cards, travel abroad and the need for a dedicated network may require manual setting or modification.


```mermaid
flowchart TD
    Subgraph A [User Device]
        direction LR
        A1 [cell phone/beecom tablet]
        A2 [computer/cell phone connection Wi-Fi]
    end

    Subgraph B1 [mobile data access path]
        direction TB
        B1 1 [cell phone modem]-->B1 2 [USIM card]<br>Store IMSI, Authentication Key]
        B1_2 -->B1 3{APN Settings<br>(Cmnet)<br>Type of network to determine access}
    end

    Subgraph B2 [Wi-Fi access path]
        B2 1 [Wi-Fi card]-->B2 2 [routers/hot spots]
    end

    A1 --> B1
    A2 --> B2

    B1_3 --> C
    B2_2 --> C

    Subgraph C [first access to core network]
        C1 [radio signal connection]-->C2 [base station]<br>(Air on the tower)
        C2 -->C3 [base station controller]
        C3 -->C4 [move core network]<br>(MME, HSS, SGW, PGW)
        C4 - “through APN Selection”-->C5 [Internet access point]<br>(ISP Network)]
    end

    C5 -->D [Public Internet]

    D -->E [Target website/server]

    Subgraph F [optional security superstition: VPN]
        F1 [VPN client on device] -- Encrypt all data-->F2 [VPN Tunnel]<br>(overrided by original connection)]
        F2 -->F3 [Enterprise VPN gateway]<br>Or public VPN server]
        F3 -- Access after decryption-->E2 [Intranet resources]<br>Or the Internet]
    end

    E -.-> F
```
