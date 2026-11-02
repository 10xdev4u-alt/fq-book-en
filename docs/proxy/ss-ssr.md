# SS/SSR


!>In short, the biggest difference between an proxy and a VPN is that the proxy doesn't virtualize a single card.<br>
  Most free proxies and VPN are strict.[NAT type](/abc/4nat.md)to limit games and downloads, etc.<br>
 ssr can use ss links and QR codes, but it's not possible, and ss can only connect to a server compatible with ss<br>
 If you want to know more about the meaning of the ss link,[Please refer to ss, ssr, v2ray Link Parsing Chapters](/append/srvurl.md)<br>
 Ss and ssr have made the socks proxy port compatible with the http protocol, so no additional proxy transfer is required<br>
 All networks of the global model, the proxy software, follow the proxy route, and the direct mode, the regular access is no proxy.<br><br>


## SS

?>In the case of a direct shutdown without the proxy being first shut down, when the computer is re-started, the proxy configuration in the system is valid, which is the reason why, after using proxy software, no Internet access is available.

### Introduction

Visits[Site ss](https://free-ss.tk/)Right-click to scan 2D.

<!-- ![](https://ipfs.io/ipfs/QmWS9eJJi7dnMXjG7jxYAz7NDDCLHnrtSfc6viNRjbBjc9?2.png) -->

![](https://i.postimg.cc/C1v3LX5P/2018-04-30-105508.png)

 It's already connected to the Internet. If your system isn't automatic, look.<a href="#/proxy/ss-ssr?id=configure">Configure</a>

Right-click allows connections from LAN

<!-- ![](https://ipfs.io/ipfs/QmbNUAL9vmXcnAkWP15XxevvLqpED2tbAxxnVCeGDs3o9X?1.png) -->

![](https://i.postimg.cc/J0fdsLLq/2018-05-05-032022.png)

`Networks and shared centres`-&gt;`wlan`-&gt;`Details`View IP address of the network

<!-- ![](https://ipfs.io/ipfs/QmdwEi4zS8DNWx8gzkykPAoBkocQguEEP4QYhZFQV8Kwj9?4.png) -->

![](https://i.postimg.cc/Vvsxz4Ds/2018-05-05-032400.png)

`Advanced`Settings`Proxy`Selection`Manual`, as set out below

<!-- ![](https://ipfs.io/ipfs/QmfU5EVwSUgyNtKFbetxfR1pvcyQTgbmM1y5Rp7QYkuX1b?1.png) -->

![](https://i.postimg.cc/mkCKNDVq/x1.png)

 Some friends may have higher Internet speed requirements to connect to the Internet and may use them.[speedtest](http://www.speedtest.net/)Conduct tests

<!-- ![](https://ipfs.io/ipfs/QmRfQ2LhCek5jw7UDBxwC2Y9Qm8VLjP17Ehhgh99Kw7Uod?3.png) -->

![](https://i.postimg.cc/zXw9yyyH/x2.png)

### Configure

Some systems, like Win7, need to manually set their own address and sock5 proxy in the internet properties when connected to the server mouth

<!-- ![](https://ipfs.io/ipfs/QmQBdt4QM9GKcgfFdXh1LtKh45ubyrTqhjEgVHUBk9VfG4?4.png) -->

![](https://i.postimg.cc/k4tHqGr4/2018-04-28-224352.png)

The PAC mode is the script configuration mode, with the listed site following the proxy route and the unrecorded address not following the proxy route, or regular access. For example, by adding Google to the proxy access list, the configuration rules are as follows:

```text
 ".google.com",
"||google.com",
```

Yes.`pac`option - &gt;`Edit local pac files`Yeah.

<!-- ![](https://ipfs.io/ipfs/QmeHE8dTsEEQhvQRWBjwzKeioyprepRha6vFFYpce4i22o?1.png) -->

![](https://i.postimg.cc/xTP40BZK/2018-04-28-230423.png)

### SS share

Right-&gt;`Servers`-&gt;`Share Server Configuration`As shown

![](https://i.postimg.cc/bv46CPGj/2018-53px8.png)

Then you can see the link to the ss and the two-dimensional code.

![](https://i.postimg.cc/90hL2Bt8/2018-06-09-174922.png)

You can share a 2D screenshot or a copy of the ss link with someone.

![](https://i.postimg.cc/FFyPZ2N2/2018-06-09-181034.png)

## SSR

### Subscriptions

Right->`Server Subscription`->`SSR Server Subscription Settings`
<!-- ![](https://ipfs.io/ipfs/QmX4z2VDbj5EDvzRzBHTiyqYsTvvxbgDi3pFwhiLfLLNFL?1.png) -->

![](https://i.postimg.cc/wvKV5kPq/2018-04-28-235146.png)

Click on the add add button and import this subscription:https://prom-php.herokuapp.com/cloudfra_ssr.txt
<!-- ![](https://ipfs.io/ipfs/QmNbaKnwt9E447xLzndAZvCHDByMbA6rZn4AsdDbeuFDuP?2.png) -->

![](https://i.postimg.cc/YChfJVB2/2018-06-09-215048.png)

<!-- ![](https://ipfs.io/ipfs/QmfXCT9yWSxPq4G7QuU9b1RzmFWZodAkY2Pzrt7iGHko5X?1.png) -->

Right->`Server Subscription`->`Update ssr server subscription (no proxy)`

![](https://i.postimg.cc/jSpNBShv/2018-04-28-235337.png)

Following the successful subscription
<!-- ![](https://ipfs.io/ipfs/QmdteWfXcW3NzJrB8gbxmF83eoybYfBoLThFEC6f8CwYCw?1.png) -->

![](https://i.postimg.cc/SQ1nwKS8/2018-04-28-235358.png)

Open SSR to see imported account information

![](https://i.postimg.cc/TPcwQdNK/2018-06-09-220222.png)


Benefits of subscription:

* Import multiple server addresses with one key
* The server configuration could be updated without the need to open site sites on a regular basis (depending on the source of the subscription)

### SR Sharing

Open the ssr selected ssr link

![](https://i.postimg.cc/SNzx37tF/2018-06-09-190728.png)



<!-- !>ssr can use ss links and QR codes, but it's not possible, and ss can only connect to a server compatible with ss<br>
 If you want to know more about the meaning of the ss link,[Please refer to ss, ssr, v2ray Link Parsing Chapters](/append/srvurl.md)<br>
 Ss and ssr have made the socks proxy port compatible with the http protocol, so no additional proxy transfer is required<br>
 All networks of the global model, the proxy software, follow the proxy route, and the direct mode, the regular access is no proxy.-->
<!-- ps:

* ssr can use ss links and QR codes, but it's not possible, and ss can only connect to a server compatible with ss
* Ss and ssr have made the socks proxy port compatible with the http protocol, so no additional proxy transfer is required
* All networks of the global model, the proxy software, follow the proxy route, and the direct mode, the regular access is no proxy.-->
