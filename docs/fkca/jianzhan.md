# A record of success after several failures in the first set-up of the site

The content contains links to relevant reference sites, some of which have been omitted to provide references and instructions, rather than a tutorial as hand handles.

## VPS and Environmental Choice

2U / 2G / 50GB / 5Mbps, with an annual fee of approximately $800-$1000; and an annual fee of $250-280 for domain names. Common VPS platforms: LightNode, DigitalOcean, Hostinger, Vultr.

* [VPS bandwidth selection guide](https://vpszhijia.com/服务器带宽多少合适)
* [Register Domain Name and Cloudflare Host](https://doc.laopobao.online/domain)
* [Compared from hosting platform: Cloudron / YunoHost / Sandstorm](https://www.bayescafe.com/tools/self-hosting-platform-comparison.html)(Recommended for Cloudron)
* [1 Panel Management Panel](https://1panel.cn/)
* [Nginx UI](https://nginxui.com/zh_CN/)
* [Micro Editor](https://github.com/zyedidia/micro)
* [Caddy Profile](https://blog.motorbottle.site/archives/168)
* [Docker Chinese References](https://dockerdocs.xuanyuan.me/reference)

Free host:

* https://run.claw.cloud
* https://www.serv00.com



** Thinking about VPS and server-free deployment**

The use of VPS is no longer recommended. The reasons are as follows:

1. The server (Servelles) platform is quite mature, not only to provide a free amount, but also to the extent that the overpayment is friendly. For most small and medium-sized projects, these services are fully capable of meeting day-to-day needs.
1. In terms of deployment strategies, static services, such as static blogs or front-end pages, are the ideal scenario for non-servers; if back-end services are needed, domestic cloud service providers also offer low-cost, stable performance options.
1. While foreign cloud servers are free of direct access, access is much slower than at home. For purposes such as scientific access, the selection of airport services is usually more cost-effective than self-built VPN.

Taken together, in the current environment, the value for money ratio of VPS has declined significantly and is no longer the preferred option.

## Bluesky station deployment

There are now two major agreements to go to the centre of socialization: bluesky of the AT protocol and mastodon of ActivityPub, but mastodon sucks.

Bluesky startup address:https://bsky.app

References:

* [[Software Teaching] Set up a Bluesky PDF server to get in and centralize community development Exhibition](https://tedliou.com/software/bluesky-pds-server-deploy/#bluesky-pds-%E4%BC%BA%E6%9C%8D%E5%99%A8%E6%9E%B6%E8%A8%AD%E5%BF%83%E5%BE%97)
* [Build your own Bluesky PDS and create your own Domain account](https://avantiblog.tw/self-hosting-a-bluesky-pds/#%E8%A8%AD%E5%AE%9ADNS_domain%E8%88%87%E7%AE%A1%E7%90%86%E5%93%A1%E4%BF%A1%E7%AE%B1)
* https://github.com/bluesky-social/atproto/issues/1752


SMTP service mailbox:

* https://resend.com
* https://www.brevo.com


bsky.app third-party starter:https://tabtter.jp


When sending an e-mail using Resend, an error in " Domain Name Unvalidation " usually occurs because the Domain Name Validation Process is not complete. To correctly verify a domain name, two things need to be noted:

1. DNS records correspond: When adding a domain name record provided by Resend to its own DNS service provider, it is important to ensure that the recorded domain name (hostname/near) is fully consistent with the requirements of Resend.
2. Console Validation: After adding DNS records, you need to return to the Resend Console for validation by clicking "Verify DNS Record" to confirm that the domain name is valid.

Only when these two steps are met will the domain name be validated so that the domain name can be used for mail.


```env
# Turn YOUR API KEY HERE into your last API Keys
PDS_EMAIL_SMTP_URL=smtps://resend:re_your_key@smtp.resend.com:465/
# Replace admin@example.com with SMTP address
PDS_EMAIL_FROM_ADDRESS=admin@hoochanlon.space
# Cancel invitation mechanism when testing effects
PDS_INVITE_REQUIRED="false"
# After editing, restart service
systemctl restart pds
```

## Memos Built Record

Memos is a lightweight self-custody note system. The new UI doesn't fit my point, so I choose to go back to the old one.

### Docker Foundation

```
+-------------------------------------------------+
| Cebu Host |
|                                                 |
| Chilehttp://服务器IP:5230 |
|                                                 |
|  +-----------------------------------------+    |
|  | Container: MEMOS |    |
|  | Application: MEROS |     |
|  | Internal port: 5230 |     |
|  | Data repository: /data |       |
|  +-----------------------------------------+    |
| Local mounted path: /var/opt/memos - - ---> |
+-------------------------------------------------+
```

### Deployment command

```yaml
version: "3.8"
services:
  memos:
    image: neosmemo/memos:0.24.0
    container_name: memos
    ports:
      - "5230:5230"
    volumes:
      - ./data:/var/opt/memos
    restart: unless-stopped
```

Toggle version command:

```bash
cd /opt/1panel/www/memos
docker compose down
docker stop memos
docker rm memos
docker compose up -d
```

Old UI screenshot:

![Old version Memos UI](https://cdn.jsdelivr.net/gh/hoochanlon/picx-images-hosting@master/uploads/2025/PixPin_2025-11-05_18-11-00.webp)


Although there are many derivatives, there is little personal interest:

- [Vespa314/cflow](https://github.com/Vespa314/cflow)
- [blinkospace/blinko](https://github.com/blinkospace/blinko)
- [AppFlowy-IO/AppFlowy](https://github.com/AppFlowy-IO/AppFlowy)


### Nginx Inverse Attention

If you do not have access to an anti-ID domain name, indicate that the browser may be forced to use HTTPS (443 ports).
And you only configured HTTP (80 port).

** Solutions:**
1. Applying for HTTPS certificates (available free of charge from Cloudflare or Let'sEncrypt).
2. If the browser caches HSTS, you need to clear the cache or use invisible mode of access.

Reference course:
[How to apply for a Claudflare free SSL certificate](https://kerrynotes.com/apply-ssl-certificate-from-cloudflare/)

### Domain binding reference

- [Vercel Domain Binding Official Guide](https://docs.tangly1024.com/article/vercel-domain)
- [Automatically apply and renew wildcard certificates using 1Panel](https://hin.cool/posts/sslfor1panel.html)
- [GitHub Pages binding domain name problems](https://blog.csdn.net/jinweilin/article/details/79607349?)
- [gthub.io binding domain names](https://blog.csdn.net/weixin_45961774/article/details/108402406)



