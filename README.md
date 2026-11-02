# VPN and proxy application details

|[![cc](https://i.creativecommons.org/l/by-nc/4.0/80x15.png)](http://creativecommons.org/licenses/by-nc/4.0/)|[![fq-book](https://img.shields.io/badge/%F0%9F%93%96book-fq--book-red.svg?longCache=true&style=flat-square)](https://hoochanlon.github.io/fq-book)|[![blog](https://img.shields.io/badge/%F0%9F%94%97blog-hoochanlon-lightgrey.svg?longCache=true&style=flat-square)](https://hoochanlon.github.io/)| [![outlook](https://img.shields.io/badge/%F0%9F%93%A7hotmail-@邮箱联系-blue.svg?longCache=true&style=flat-square)](mailto:hoochanlon@outlook.com) |[![stars](https://img.shields.io/github/stars/hoochanlon/fq-book.svg?style=social)](https://github.com/hoochanlon/fq-book)
|:-:|:-:|:-:|:-:|:-:|

## ***intro***

The book focuses on ways to access the Internet and on techniques for accessing information, and provides a brief hand-to-hand configuration of relevant and typical software, as well as a description of the rationale.

* [Read](docs/README.md)
* [Contents](docs/_sidebar.md)
* [Note](docs/postscript.md)

**Most of the sample sites of the book, and more information available[w3-goto-world](https://github.com/hoochanlon/w3-goto-world), the relevant sections of the book are stored together Library`Scientific Internet access`It'll do better! I have to say, this free ladder is amazing:[Pawdroid/Free-servers](https://github.com/Pawdroid/Free-servers)Now the proxy software has evolved to achieve VPN functionality:[clash-verge-rev](https://github.com/clash-verge-rev/clash-verge-rev)and thousands of configurations[mihomo_yamls](https://github.com/HenryChiao/mihomo_yamls)Too strong.**

<!--[![Stargazers over time](https://starchart.cc/hoochanlon/fq-book.svg)](https://starchart.cc/hoochanlon/fq-book)-->

[![Star History Chart](https://api.star-history.com/svg?repos=hoochanlon/fq-book&type=Date)](https://star-history.com/#hoochanlon/fq-book&Date)

## ***update***

This book will connect you to the Internet.->Key points for updating VPN and proxy applications:

* Increased speed of science online
* Increased access and software configuration
* Crx head invalid solution description
* VPN connected to the server without access to any web page and other network solutions
* Windows cannot set up system proxy questions
* Project built-in probot robot, method add strategist mode

* <details><summary>Other updates.</summary>

    * Add a description of the virtual telephone registration programme
    * Google New Account Registration
    * Web time machine and search for similar sites
    * Using personal blogs as a link to the Internet

    </details>

In addition, unnecessary duplication of content has been streamlined, the picture is supported by postimages, the project has been reduced from 30M to 144KB in size, and it is very easy to deploy and download online, and fork the book!

### ***NET::ERR_CERT_AUTHORITY_INVALID***

The browser gives an additional hint: the assailant may have tried to steal your information from xx.github.io, a server that could not prove it was xx.github.io; your computer operating system does not trust its security certificate. This could have been caused by a configuration error or an attacker intercepting your connection. When the visit is continued, another 403.

Release!: Change to 100 degrees, Ali, DNS, and use ipconfig/flushdns to refresh the cache. Brief explanation: The ISP provides the wrong root certificate for the DNS in exchange for a third party that can provide the correct certificate to the website.

* 100 degrees DNS: 180.76.76.76
* Ali DNS: 223.5.5.5, 223.6.6.6.6
* DNS: 119.29.29.29, 182.254.116.116

## ***usage***

### Online deployment

1. Fork, this book, it's yours.
2. Modify docs/index.html to`window.$docsify = {}`Yes.`repo`Change to your repo
3. Find GitHub Pages in settings and choose`master brach/docs folder` 
4. Visits`https://yourGitHub username.github.io/fq-book`You can see the effect.

<details><summary>Take the example of you.</summary>

![](https://user-images.githubusercontent.com/35732922/59164863-80b72000-8b45-11e9-8807-849ba56056f4.png)

![](https://user-images.githubusercontent.com/35732922/59164963-e061fb00-8b46-11e9-9647-c827fa784e38.png)

</details>

<!--<details><summary> click me! </summary></details>-->

Preview

![Snipaste_2019-06-10_06-18-56](https://user-images.githubusercontent.com/35732922/59165031-d7255e00-8b47-11e9-8a5b-829b61afeb24.png)


### Local deployment

 
Environmental requirements:[git](https://git-scm.com/)I don't know.[node](https://nodejs.org/zh-cn);installation is simple always`Next`Until the installation is complete.

* Right-click selection`git bash`Enter in command line`npm i docsify-cli -g`
* Click`clone or download`Download`.zip`And decompress
* Enter`fq-book-master/docs`Contents
* Right shot open.`git bash`Enter`docsify init .`
* Use`docsify serve`Local deployment completed
* Enter in Browser`localhost:3000`See effects: Joy:

More details, please.[Docsify Official Network Documentation](https://docsify.js.org/)

Use[Offline Explorer](https://www.52pojie.cn/thread-790037-1-1.html)The entire page of the book can be downloaded locally for offline viewing

Of course, you can also choose to convert the book to a gitbook-generated format and produce the PDF of the book with its own command.

<!--
It can also be used[wkhtmltopdf](https://github.com/wkhtmltopdf/wkhtmltopdf)And the combination.[tools.pdf24.org](https://tools.pdf24.org/zh/webpage-to-pdf)The PDF for the book.
-->

### Get Updates

In the case of 01user, the old layout chain had expired at the time of the local deployment and the new version had been supported by postimage; at that point, the book would need to be upgraded to Book II, and it would be very simple to get an update and implement the following instructions on a fork basis:

```
git clone https://github.com/你的github用户名/fq-book.git
cd fq-book
git remote add upstream https://github.com/hoochanlon/fq-book.git
# If necessary, use the following:
git fetch upstream
# If there is any knowledge of Git, the recommendations should be used as follows:`git pull upstream master --allow-unrelated-histories`Update in review code
git reset --hard upstream/master

```
Commit to your own repo

```
git add .
git commit -m "test"
# This directive is only for the convenience of newbie or for the necessity of enforcing it; will it be recommended that the Git put-u-force-west-case original master
git push -u -f origin master  
```

Enter the account number & password to upload to your own repo to complete a remote update of Github account warehouse. ** More instructions, please see[Git Official Document](https://git-scm.com/book/zh/v2)** In exceptional circumstances, there may be a need for agency, mirror, light cloning settings

<details><summary>Update Icon</summary>

![](https://i.postimg.cc/YSY78GPL/Snipaste-2019-06-12-15-59-16.png)

![](https://i.postimg.cc/pTrZRztp/Snipaste-2019-06-12-16-40-01.png)

Deployment testing

![](https://i.postimg.cc/dV1tRjrW/Snipaste-2019-06-12-16-42-04.png)

Commit to Repo

![](https://i.postimg.cc/tRkjrVX8/Snipaste-2019-06-12-16-43-37.png)

</details>

### Proxy Settings

#### Agent.

guit client proxy settings, and cancel proxy

```
git config --global http.proxy 'socks5://127.0.0.1:1080' && \
git config --global https.proxy 'socks5://127.0.0.1:1080'

git config --global --unset https.proxy
git config --global --unset http.proxy
```

guit line defaults to download the full historical version of the project, and low-speed friends can use light copying if they only care about the latest code and not previous history:

```
git clone --depth=1  https://github.com/你的用户名/你的repo.git
```

#### Mac Terminal

Agent Settings for Mac Terminals (http://https.int) and Cancel Agent

```
export ALL_PROXY=socks5://127.0.0.1:1080

unset ALL_PROXY"
```

Even if the proxy software were to be in a global mode, the terminal would not be a proxy and would need to be set up separately. In addition, the Mac terminal set up the proxy Git to be free of the setup. This is available.`curl cip.cc`To determine if the software went through the proxy channel.

#### ssh

```
## gthub ssh configuration
### https://help.github.com/articles/using-ssh-over-the-https-port/

## HTTP Proxy
ProxyCommand socat - PROXY:127.0.0.1:%h:%p,proxyport=8848

## Socks5 Proxy
 ProxyCommand nc -v -x 127.0.0.1:1080 %h %p
```

More proxy settings:[SunSeekerX's Notebook-Agent Setup](https://doc.yoouu.cn/basic/proxy.html)/ See:[v2ex - Why is CMD still Ping not working Google?](https://www.v2ex.com/t/877527)(2024.1.12)

## ***essays***

Set up HOSTS, DNS software, recommended:[Ip Switch](https://github.com/hoochanlon/Ip-Switch)(Import GitHub hosts available)[ineo6/hosts](https://github.com/ineo6/hosts)I'm sorry.[DNSCrypt](https://github.com/DNSCrypt/dnscrypt-proxy)I don't care how the proxy and vpn change. VPN, Proxy and something new.[clashios](https://clashios.com/about-me/)The software that was mentioned was also available.

In terms of downloading components, some of the people who like to manipulate the configuration of the environment have naturally learned some lessons that are written in projects, such as:[homebrew-install](https://github.com/ineo6/homebrew-install)I don't know.[Thanks-Mirror](https://github.com/eryajf/Thanks-Mirror)I don't know.[package-manager-proxy-settings](https://github.com/comwrg/package-manager-proxy-settings)I don't know.

[SteamTools](https://github.com/BeyondDimension/SteamTools)Game accelerators, basic community shops, community news browsing for steam, all right, free of charge, after all.[dogfight360](https://www.dogfight360.com/blog/475/#comment-25207)UsbEAm Hosts Editor also works to speed up access to the video-cheat. And a popex hero (iOS/iPados version) can actually play with a little rocket, though it's locked up.


## ***mind you*** 

The book allows for performance and sharing but prohibits commercial use, and circumvention access is required only for research purposes. The following is a disclaimer:

* This writing is intended for overseas Chinese users and is for scientific research and study only and is not intended for other purposes
* The Chinese people are asking themselves to shut down the book and to delete all its contents within 24 hours, otherwise the author of the book will not be responsible for any consequences.

© 2019 [hoochanlon](https://github.com/hoochanlon)



