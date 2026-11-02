# Ss, ssr, v2ray Link Parsing

?>Many people on the Internet share free ss, ssr free accounts, and a few share V2rays; some directly display services, ports,ips, protocols, etc., and simply manually enter the corresponding parameters, others directly display two-dimensional codes and use the client software to scan them.<br><br>
However, many are displayed directly in the form of links, such as ss://xxxxx or ssr://xxxxx, for which the direct use of ss, ssr client right-click is sufficient to import url links from the paste.



## SS Link

Take as an example the ss links, which are as follows:

`ss://YWVzLTI1Ni1jZmI6S1NYTmhuWnBqd0M2UGM2Q0A1NC4xNjkuMzUuMjI4OjMxNDQ0`

Use[Base64 decode station longer](http://tool.chinaz.com/Tools/Base64.aspx)(This tool has a harmonization factor, only for demonstration purposes)

![](https://i.postimg.cc/W3Vkrt3d/2018-06-07-131159x.png)

![](https://i.postimg.cc/ZKny6GTx/2018-06-07-132540.png)

It's not hard to tell from these two pictures that this is the way it is.`ss://method:password@server:port`, in this format and encoded in base64, you can share ss with each other.

![](https://i.postimg.cc/fT1kmkqM/2018-06-07-142343.png)

If you share two-dimensional code, you can use it.[QR code generator](https://www.qrstuff.com/)Scan share of ss links embedded in QR code

![](https://i.postimg.cc/7hGwZnk0/2018-06-07-141818.png)

## SSR Link

And look at the url of ssr, the link is as follows:

```text
ssr://NjQuMTM3LjIyOC4zNTo1NzYwOmF1dGhfc2hhMV92NDpjaGFjaGEyMDp0bHMxLjJfdGlja2V0X2F1dGg6Wkc5MVlpNXBieTl6YzNwb1puZ3ZLalUzTmpBLz9yZW1hcmtzPTVweXM1WVdONkxTNTZMU201WS0zNXAybDZJZXFPbVJ2ZFdJdWFXOHZjM042YUdaNEx3
```

Use[Base64 tool](https://1024tools.com/base64)Decoding

![](https://i.postimg.cc/cJzsyzq0/2018-06-07-145222.png)

 String contains`–`We need to decode it.`–`Replace this character with`+`Character

![](https://i.postimg.cc/3wzHbDpw/2018-06-07-150006.png)

The effect is as follows:

![](https://i.postimg.cc/Jzgg1Ch6/2018-06-07-150327.png)

And look at the screenshot of the ssr link imported.

![](https://i.postimg.cc/4NyBn2qr/2018-06-07-150608.png)

As a result, the format is as follows:

`ssr://ip:port:protocol:method:blending:password/?remarks=other text`

Sometimes you see a partial decodement.

`159.65.1.189:5252:auth_sha1_v4:rc4-md5:http_simple:NTJzc3IubmV0/?obfsparam=&protoparam=&group=d3d3LnNzcnNoYXJlLmNvbQ&remarks=RE1fTm9kZQ`

Of which`obfsparam`I don't know.`protoparam`I don't know.`group`I don't know.`remarks`It's optional or optional.

![](https://i.postimg.cc/76PSdfyp/2018-06-07-160125.png)

## v2ray Link

In fact, the V2ray link and the related QR code were generated in the same way as above, but in the same way as the configuration parameter format. v2ray does not have a uniform url format like ss, so a shared link or two-dimensional code for each v2ray graphic client is not necessarily universal

The link to v2ray is as follows:

```
vmess://ew0KICAicHMiOiAicnVzc2lhbi1jbG91ZCIsDQogICJhZGQiOiAiMTg1LjE3Ny4yMTYuMTM0IiwNCiAgInBvcnQiOiAiMjI1MzUiLA0KICAiaWQiOiAiNTIwNTAwNTctZjVlMS00YjllLWI3OGItNWY0OWI1NDlmZDIxIiwNCiAgImFpZCI6ICI2NCIsDQogICJuZXQiOiAia2NwIiwNCiAgInR5cGUiOiAic3J0cCIsDQogICJob3N0IjogIiIsDQogICJ0bHMiOiAiIg0KfQ==
```

When we decode the base64, we compare the parameters of the v2ray client. Yeah.

![](https://i.postimg.cc/85sbKtW2/2018-06-08-223349.png)

It's basically this format.

```json
{
  "Ps": "Al alias,"
  "add": "ip address",
  "port": "port",
  "id": "uuid",
  "aid": "alterid",
  "net": "transmission protocol,"
  "type": "the disguise type,"
  "host": "http header parameters",
  "tls": "Downward transmission secure."
}
```

 In addition to aliases, it can be said that the parameters of the server and client must correspond to each other, and that aliases and blanks can be omitted. Generates a base64 code according to this relevant format.

![](https://i.postimg.cc/pXBnjK5z/2018-06-08-233637.png)

Add at the beginning of the base64 code`vmess://`Protocol Header

```text
vmess://ewogICJhZGQiOiAiMTg1LjE3Ny4yMTYuMTM0IiwKICAicG9ydCI6ICIyMjUzNSIsCiAgImlkIjogIjUyMDUwMDU3LWY1ZTEtNGI5ZS1iNzhiLTVmNDliNTQ5ZmQyMSIsCiAgImFpZCI6ICI2NCIsCiAgIm5ldCI6ICJrY3AiLAogICJ0eXBlIjogInNydHAiCn0=
```

Imports it to a V2ray client, which can be successfully connected to the server without other relevant changes.

![](https://i.postimg.cc/mDTvPxvQ/2018-06-08-235033.png)

Of course, it's better to add an alias so that the V2ray client can automatically generate the corresponding V2ray chain. Answer.

![](https://i.postimg.cc/cLX9FK28/2018-06-08-235553.png)

## SSR-SS compatibility

Question of ssr and ss compatibility

> Original language:[A little white question about Shadowsocks.](https://doub.io/ss-jc35/)Author:[comma](https://doub.io/author/toyo/)

> ** When the protocol was canceled,** when your ShadowsocksR service provider was configured** * Later, only the ShadowsocksR client ** selects the corresponding protocol ** (SSR client selects the original protocol and cannot be connected \) and the original Shadowsocks client cannot be connected.

> Only if you set the protocol for the ShadowsocksR service to ** (origin\)** can the ShadowsocksR client \ (select original protocol\) and the Shadowsocks client link to your ShadowsocksR service \ (account \).

> The current ShadowsocksR service is that **auth\aes128\ *** and subsequent agreements do not support the original version of compatibility, the previous protocol can be compatible with the original version and the confusion can be compatible with the original version.

> Of course, this agreement is only for ShadowsocksR. It does not matter about confusion parameters. Agreements and confusion can be separated. You can agree not to set the original compatible version, but to set the original compatible version, or not to set the protocol, but only to set the original compatible version, which can be, does not exist, and confusion must be addressed.

In sum, ssr can use ss servers, but ss does not necessarily work if it uses ssr servers; by the way: The ssr is capable of using ss-links and scanning QR codes (and don't worry about any dynamic short links...), and the reverse is not effective.

Personally, I think ssr is an upgraded version of ss, which is a relationship:

![](https://i.postimg.cc/1RrpGkL8/2018-06-08-011429.png)

Getting to know this, then start the demonstration, open it.[Small tool page for ssrsare forum](https://tool.ssrshare.com/tool/free_ssr)

![](https://i.postimg.cc/7hjDGsMw/2018-06-08-014905.png)

The origin protocols and plain confusion in the figure support the original ss, choosing one of which to copy the ssss chain Answer.

![](https://i.postimg.cc/t70QC1pg/2018-06-08-020234.png)

Decode it.

![](https://i.postimg.cc/VN58gPGm/2018-06-08-023014.png)

As we learned about the link format of ss and ssr:

`ss://method:password@server:port`

`ssr://ip:port:protocol:method:blending:password`

Convert decoded ss to ssr

![](https://i.postimg.cc/vZ2RcSQj/2018-06-08-024019.png)

Encoding them

![](https://i.postimg.cc/zfhd8d3T/2018-06-08-024834.png)

Add`ssr://`Linking protocol header, re-import to ssr did not succeed, because the passwords are encoded at a level of base64... and a code is required

![](https://i.postimg.cc/jdJn8B16/2018-06-08-030909.png)

After which part of the parameter configuration is pasted to the password in the original format and encoded

![](https://i.postimg.cc/d0J7V3Vn/2018-06-08-031437.png)

Join again.`ssr://`Link protocol header, import to ssr as follows:

`ssr://MTM5LjU5LjE2Ny4yNDY6NjIwMzpvcmlnaW46YWVzLTI1Ni1jZmI6cGxhaW46YVM1M2RYY3VjbVZr`

![](https://i.postimg.cc/x1nHctsK/2018-06-08-032054.png)

## V2ray compatibility with ss

The server that ss connects to v2ray requires the corresponding ss compatible configuration at the V2ray service end; as for v2ray connects to its own compatible ss, certification mechanisms such as uuid may be required.

> The configuration parameters are summarized from:[V2Ray replaces shadowsocks server details](https://www.daehub.com/archives/2156.html)Author:[Invisible Center](https://www.daehub.com/)

```json
"inboundDetour": [
{
    "protocol": "shadowsocks", // / Open Shadowsocks
    "port": 30001, / / Intercept 30001 port
    "settings": {
    "Method": "aes-256-cfb", /// Encryption, aes-256-cfb and aes-128-cfb
    "password": "v2ray", / / password, must be the same as client
    "udp": fake / / Whether to open UDP forward
  }
  },
  {
    "protocol": "shadowsocks", // / Open Shadowsocks
    "port": 30002, / / listening to 30002 ports, multiple ports only for multiple users due to Shadowsocks restrictions
    "settings": { / / / Configuration similar to above
    "method": "aes-256-cfb",
    "password": "v2ray-2",
    "udp": false
  }
}
],
```




