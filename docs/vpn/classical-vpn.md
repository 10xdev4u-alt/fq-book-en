## tunsafe

> Use[WireGuard](https://zh.wikipedia.org/zh-cn/WireGuard)protocol for high performance and safe VPN client. TunSafe makes it very simple to set up a very fast and safe VPN tunnel between Windows and Linux.[From the official network.](https://tunsafe.com)I don't know. You know, if you're interested,[Virtual webcard TUN/TAP driver design rationale - IBM dev](https://www.ibm.com/developerworks/cn/linux/l-tuntap/index.html)I don't know.[TUN and TAP wiki](https://zh.wikipedia.org/zh-hans/TUN%E4%B8%8ETAP)

Enter[Network of tunsafe officials](https://tunsafe.com/)In addition, it can be seen that it provides a stand-alone virtual network adapter and software (collector installers require a global wall-to-wall environment) and then downloads and installs both documents.

![](https://i.postimg.cc/1XRCdppx/20190607083401.png)

Installation is simple, by default; just take care to tick always trusted items.

![](https://i.postimg.cc/Z5LLG954/20190607083553.png)

Yes.`user guide`Selection`using tunsafe windows`Then choose.`free vpn servers`

![](https://i.postimg.cc/7LKsW3r8/20190606205200.png)

Click`create new account`, select the server and generate downloads of the profile,** it is recommended that multiple profiles be downloaded to test the connection effect**.

![](https://i.postimg.cc/63NrzTyJ/20190606205536.png)

It could be here.[mullvad](https://www.mullvad.net)selection`Obtain accounts`-> `Authentication` -> `WireGuard configuration generator`

![](https://i.postimg.cc/C1b528w4/20190607084331.png)

Select Server and Download

![](https://i.postimg.cc/CxnYmCWV/20190607084522.png)

Open Software In`File`selection in entry`browse in explorer`Opens the software configuration directory source

![](https://i.postimg.cc/hv8Qj0rf/Snipaste-2019-06-06-21-11-36.png)

Import downloaded conf into this directory

![](https://i.postimg.cc/SRYVwsqj/20190607092202.png)

If you can't connect, then a server connection test.

!>There may also be a problem of maliciously banned use.[Briefly on the issue of domestic murder - Malicious prohibition of Internet access](append/guochan-sharuan?id=malicious-prohibition-of-internet-access)

![](https://i.postimg.cc/T3RbDfrP/Snipaste-2019-06-07-08-54-24.png)


## GateVPN

!>Focused and easy to block objects need to choose appropriate protocols and connections and to update lists and software from time to time, otherwise the connection success rate is extremely low, and the understanding of the agreement and how it is chosen is extremely low.[Please click here for details.](4vpn.md)

> Original list source:[Bubble](https://pao-pao.net/article/82)And how to set up the server connection,[List of GateVPN officials](http://www.vpngate.net/cn/)Noted

| GateVPN server connection | Software Settings | Platform application | Server support | It's over the wall. |
| :-: | :-: | :-: | :-: | :-: |
| SSL-VPN | General | Only windows platforms | Support all | Better. |
| L2TP/Ipsec-VPN | Simple | win,mac,ios,android | Very few. | Poor |
| openvpn | Complex | win,mac,ios,android | Excellent. | General |
| MS-SSTP | The easiest. | Only windows platforms | Better. | Worst |

<!-- ![](https://ipfs.io/ipfs/QmQc1YoVQvszg1rNZscxwWJ7ZmBMmDZyvALyw3T5iYsRa4?4.gif) -->

![](https://i.postimg.cc/RZFb7zhp/Snipaste-2019-06-06-04-03-52.png)

## OpenVPN

!>Currently, it has been targeted with a low success rate of connectivity, and some SSH sites have provided downloads of OpenVPN profiles because most countries are not as strict as China has blocked the network.

Enter[freeopenvpn.org](https://www.freeopenvpn.org/), click home to view the server list,`get access`I don't know.`download`Access to Download Pages

<!-- ![](https://ipfs.io/ipfs/QmbkkgwTLEQGRWNEqWAvhnLkaNB5dVWNmZiLV1HYonVkwQ?1.png) -->

![](https://i.postimg.cc/fRkYHqMb/2018-04-29-012851.png)

Run openVPN connection after importing files Network

