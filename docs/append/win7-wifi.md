# With Win 7, computers are routers.

> Original language:[With Win 7, computers are routers.](http://blog.sina.com.cn/s/blog_6286984e0100kujt.html)Author:[Microsoft Windows blog](http://blog.sina.com.cn/s/blog_6286984e0100kujt.html)

There are problems with the Internet in the ordinary course of Internet access, and at this point we need to look at the state of the network connection and look at the root causes of the problem.

<!-- ![](https://ipfs.io/ipfs/QmQtXLa5xLbqNsdv82cVYJA8hE9greNXR34FUfkENjoDND?4.jpg) -->

![](https://i.postimg.cc/tCYPPsyg/a12d690.jpg)    
In WinXP, you will then open a "network connection" window from the start of the menu or control panel to check the network problem, but for a Win7 rookie, finding this window seems a little difficult, and searching for "network connection" in the control panel is not possible. At this point, you should have thought of the “Networks and Sharing Centres” that were introduced last time, because it brings together the regular configuration of the network, and can we find a clue here?

Try the Change Adapter Settings task above the left. See, the Web Connection window was hidden here, so we can look at the settings and status of the computer’s webcards as in XP:

<!-- ![](https://ipfs.io/ipfs/QmPQopQc63jx7VJ6x5DVzAShK3XbfsDLA2ZMictCSdWMcx?0.jpg)   -->

![](https://i.postimg.cc/Nf3yHbpN/e88p690.jpg) 

However, some of the students may find that there is an additional item in these cards called Microsoft WiFi Miniport Adapter, which by name appears to be Microsoft's virtual Wifi card. How could there be such a thing in the computer for no reason? Is another Win 7 hidden function discovered?

That's right. It's really the new, hidden function of Win7. "Virtual Wifi," I'm sorry to sell you a big deal. In short, Win7 can virtualize an additional Wi-Fi card based on existing Wi-Fi cards to support network sharing and turn our computers into wireless routers! It seems that "virtual" is everywhere today.

Some of our classmates may know that until then, a temporary network could be set up to share the Internet with other Wifi devices.

<!-- ![](https://ipfs.io/ipfs/QmbDefgaVGHeDwmMdbS4BGi27r8wpYNwzNHJZpWWUBXTQJ?0.jpg)   -->

![](https://i.postimg.cc/Jz3hB8yn/a3et690.jpg) 

The traditional temporary wireless network (i.e., the Ad Hoc model) is a point-to-point network, similar to the “double-wire interconnection” in the cable network, which, while also possible, can be shared over the Internet, is mainly used for the temporary interconnection of two equipments, and some equipment (such as that using the Android system) does not support access to the temporary wireless network. There is also a very serious problem, as a wireless card can only be connected to a wireless network, so that if it is connected to the Internet through a wireless card, it can no longer be used to create a temporary network and share the Internet.

And the virtual Wifi in Win 7 can virtualize a new network adapter based on a real WiFi card, achieve a wireless router's AP, and solve all the problems of the temporary network.

So seductive, now teach you:

1. ** Run command hint as administrator**

    Because the next steps have to be run under administrator ' s permission, we find the Command Indictor from the start menu, or we type the cmd quick search, right-click it, choose " Run as administrator " and click " Yes " in the popup user control window. Another way to do this is to hold down Ctrl and Shift and click the shortcut, which is easier.

2. ** Enable and set the "virtual Wifi card" mode**

    Enable virtual wireless card (equivalent to a router) to run the following commands:

    `netsh wlan set hostednetwork mode=allow ssid=”Win7 AP WOW!” key=wifimima`

    <!-- ![](https://ipfs.io/ipfs/QmaMeEgS3zw7VeCXrcxAyRdiQPhynYVaanbWJT6Q1Y2bYo?1.jpg)  -->
    
    ![](https://i.postimg.cc/9QB7HZYJ/cd41e690.jpg) 

    There are three parameters in this order:

     * Mode: Whether or not to use the virtual Wifi card to read`disallow`The virtual card will disappear if it is disabled.

     * Ssid: Specify the name of the wireless network, preferably in English.

     * Key: Specify the password for the wireless network. The password is used for secure WPA2 encryption of the wireless network, which is a good way to prevent stabbing.

3. ** Enable Internet Connection Sharing (ICS)**

    In order to share connected Internet with other computers or devices, we need to activate the Internet Connection Sharing function. Opens the Network Connect window, right-clicks the network connection that has been connected to the Internet, selects the Properties, switches to the Shared tab, selects the check box and selects the network connection that allows it to share the Internet here, our virtual Wifi card:

    ![](https://i.postimg.cc/jSvLFKR1/d1de690.jpg)
    
    This will be followed by the "shared" sign next to the shared card icon, which means that the "Internet connection sharing" is open to virtual wireless cards:
    
    ![](https://i.postimg.cc/5tYbSMyL/e2f690.jpg)

4. ** On-line network**

    Continue to run the following commands in the command prompt:

    `netsh wlan start hostednetwork`

    It will open the wireless network that we set up before. In the same vein, the Wi-Fi can be shut down by changing it to stop).

    <!-- ![](https://ipfs.io/ipfs/QmZGdo9UjyEKx5v3pSzKaTvTeFonGRwVs6wR7NdXinfraw?0.jpg) -->

    ![](https://i.postimg.cc/ZKMQFvds/et6ae690.jpg)

    As you can see, the virtual wireless card has already opened the wireless network that we have designated, and its IP addresses, among other attributes, are allocated by the Internet Connection Sharing service, so it is more specific:

    <!-- ![](https://ipfs.io/ipfs/QmSykUE1kpTVbUiiGnn3QoSyokGfpsTR7mwSE3HiSTr1SL?4.jpg) -->

    ![](https://i.postimg.cc/Qtfm8vgY/c17ec690.jpg)

    Everything is ready, and in the end the wireless network is connected to a computer or a mobile phone that needs to be connected, so that it can travel directly to the Internet:

    <!-- ![](https://ipfs.io/ipfs/QmR3wMDpsf4MngKbRWuiw8s8BAednxzGWhUcCpqy3tn2Ed?1.jpg) -->

    ![](https://i.postimg.cc/RZmgT10R/dcd690.jpg)
    
It needs to be said that the virtual Wifi network adapter requires a real network adapter driver that is specifically designed for Windows 7. Fortunately, this model is supported by a wireless card driver certified through the Win7 logo, and we can look directly for it when we select it. If running`mode=allow`After the command, the virtual wireless card does not appear on the network connection, which means that the real card does not support the function. You can upgrade the webcard drive to the latest version of Win7 and, as long as you provide shared computers that are not dormant, you can provide network sharing like routers.

In addition to using commands to set up virtual WIFI, Microsoft has made its programming interface publicly available, offering the possibility of developing graphic settings, such as a virtual Wifi feature that can be visualized by a free small software, which can be downloaded from its official website:[www.connectify.me](http://www.connectify.me/)


<!--Replace images that enable Internet Connection Sharing (ICS) separately-->
<!-- ![](https://raw.githubusercontent.com/hoodiearon/fq-book/master/docs/images/d1de690.jpg)-->

<!-- ![](https://raw.githubusercontent.com/hoodiearon/fq-book/master/docs/images/e2f690.jpg) -->


<!--ipfs enable "Internet Connection Shared" pictures-->
<!-- ![](https://ipfs.io/ipfs/QmQkAtXoff2tp8uiRbpGNwAA4hTbCqm8uRGjXmayWP1RcN?4.jpg)   -->

 <!-- ![](https://ipfs.io/ipfs/QmagdtNek1pwCGB6syXtf46WY6MuJFcrJieS9W623NFUik?0.jpg) -->