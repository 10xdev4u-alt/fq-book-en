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


## Two different webs.

Fixed broadband network

```mermaid
graph LR
    A [computer]-->B [Webline/Wi-Fi];
    B -->C [routers];
    C -->D [Light Cat];
    D -->E [fibre];
    E -->F [Operator room];
    F -->G [Internet];
    
    style A fill:#e1f5fe
    style G fill:#f1f8e9
```

Mobile communications network


```mermaid
graph LR
    A [computer with mobile modules]-->B [wireless signal];
    B -->C [base station];
    C -->D [move core network];
    D -->E [Internet];
    
    style A fill:#ffe0e0
    style C fill:#fff3e0
```


## Structure comb

Full technical architecture of computers, mobile phones and Internet access, from equipment to the Internet


```mermaid
flowchart TD
    Subgraph UserZone
        direction LR
        Device1["computer/smart device]<br>Operating systems in the net.
        Device2.<br>Duplex: Wi-Fi+House"]
    end
    
    % = = = = = = path 1: cable network = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = cable network = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    Device1 -->Zoom 1: Wireless Network<br>Ether frame/RJ45 interface "WiredPath"
    
    Subgraph WiredPath.
        Router1 ["family/business router"]<br>NAT/DHCP/Firewalls]
        Modem ["Photocat/modulator"]<br>Photovoltage."
    end
    
    Router1 -->"The Internet"<br>PPPoE/DHCP"| Modem
    
    % = = = = = = path 2: Wi-Fi = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    Device1 & Device2 -->Vi-Fi Connection<br>802.11ac/ax protocol "WiFiAP" ["Wi-Fi access point/router"]
    
    WiFiAP --> Router1
    
    % = = = = = = = path 3: Mobile data network = = = = = = = = = = = = = = = = = = = = = = = =
    Device2 -->|3: Move Data<br>SIM card/USIM '|MobilePath
    
    Subgraph MobilePath
        Radio.
        BS ["base station"]<br>4G:eNodeB / 5G:gNB<br>Wireless signal overlays."
        RAN ["wirewire access"]<br>Base station controller/aggregate"]
        MobileCore["move core"] Network<br>MME: Mobile Management HSS: User Database<br>SGW/PGW: Data gateway"]
    end
    
    Radio -->Wireless signal.<br>LTE/NR protocol "BS"
    BS --> RAN
    RAN --> MobileCore
    
    % = = = = = = operator network convergence = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    Modem -->| optic/DSL lines<br>Access to the Internet, | ISP A ["Operator's Broadband Access"] Network<br>OLT/DSLAM"]
    MobileCore -->ISP B.
    
    ISP_A -->BRAS ["broadband access server"]<br>BRAS<br>Certification/costing/allocation IP"]
    ISP_B --> BRAS
    
    % = = = = Internet = VPN = = = = = = = = = = = = = = = = = = Internet = VPN = = = = = = = = = =
    BRAS -->Internet Network<br>Internet"]
    
    Internet -->Target ["target server"]<br>Website/application/services"]
    
    % = = = = = = VPN superstition = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    Subgraph VPN Layer
        V Clent ["Device VPN Client"]
        V Tunnel.<br>IPSec/OpenVPN/WireGuard"]
        V Server.
    end
    
    Device1 & Device2 --> V_Client
    V_Client --> V_Tunnel
    V_Tunnel --> V_Server
    V_Server --> Target
    
    % = = = = = key contract warehouse = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    Subgraph ProtocolStack ["Key Protocol Stack"]
        P7 ["Application Layer"]<br>HTTP/HTTPS/DNS"]
        P4 ["Transmission Layer"]<br>TCP/UDP(port)"]
        P3 ["Web Layer"]<br>IP(IPv4/IPv6)/route"]
        P2 ["Data Chain Layer"]<br>Ethernet/MAC/Wi-Fi/PPP"]
        P1 ["Physico Layer"]<br>Fibre/wire/radiowaves]
    end
    
    ProtocolStack -.->UserZone.
    
    % = = = = = special connection = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    Subgraph SpecialPaths
        SP1 ["cellular USB shared network]<br>Cell phone as modem."
        SP2 ["Bluetooth Network Sharing]<br>PAN"]
        SP3 ["satellite Internet"]<br>Starlink et al."
    end
    
    SP1 -->"USB RNDIS Agreement"
    SP2 --> Device1
    SP3 -->Satellite.
    Satellite --> Internet
    
    % = = = = = authentication and identification = = = = = = = = = = = = = = = = = = = = = certification and identification = = = = = =
    Subgraph AuthSystem
        Auth1 ["Cable/Wi-Fi"] Authentication:<br>PPPE/802.1X/cipher"]
        Auth2 ["movable network authentication:<br>SIM card (IMSI/Ki)/5G-AKA"]
        Auth3 ["IP address allocated:<br>Public Internet IP/CGNAT net IP"
    end
    
    Auth1 --> BRAS
    Auth2 --> MobileCore
    Auth3 --> BRAS
    
    % = = = = equipment identification = = = = = = = = = = = = = = = = = = = = = = equipment identification = = = = = = equipment identification = = =
    Subgraph DeviceID
        ID1 ["MAC address]<br>Data chain layer"
        ID2 ["IP address"]<br>Network Level
        ID3 ["IMSI" (SIM card)<br>Mobile Networks]
    end
    
    ID1 --> Device1
    ID2 --> Device1
    ID3 --> Device2

    % = = = = = = style beautification = = = = = = = = = = = = = = = = = = = =
    classDef user fill:#e3f2fd
    classDef wired fill:#e8f5e8
    classDef mobile fill:#fff3e0
    classDef isp fill:#f3e5f5
    classDef internet fill:#e8eaf6
    classDef vpn fill:#ffebee
    classDef protocol fill:#f5f5f5
    classDef special fill:#fff8e1
    
    class UserZone,Device1,Device2 user
    class WiredPath,Modem,WiFiAP wired
    class MobilePath,Radio,BS mobile
    class ISP_A,ISP_B,BRAS isp
    class Internet,Target internet
    class VPNLayer vpn
    class ProtocolStack,AuthSystem,DeviceID protocol
    class SpecialPaths,SP1,SP2,SP3 special
```



