# Lack of access to Gemini (personal use)

> [!tip] It is recommended to refer to this chapter after the ipdodo team program has been configured.

Configure and Effect as Figure

![](https://cdn.jsdelivr.net/gh/hoochanlon/picx-images-hosting@master/imgs/uploads/2026/20260815191634.png)

![](https://cdn.jsdelivr.net/gh/hoochanlon/picx-images-hosting@master/imgs/uploads/2026/20260815191640.png)

![](https://cdn.jsdelivr.net/gh/hoochanlon/picx-images-hosting@master/imgs/uploads/2026/20260815191641.png)


> [!important]
> Why is it that when the browser goes over the wall, the location is in Taiwan, in the United States, and it's no use to close the QUIC agreement, and clash chooses Research+Al, US Fixed IP, and can get regular access to Gemini? Below is the answer by Manus AI.


The central reason is that:** “The positioning shown by the browser” is not the same as “the area determination used by Gemini to determine whether to release”; the closure of QUIC has also changed only one transmission protocol and cannot alter factors such as agency exports, DNS, WebRTC, account numbers and IP credibility. **

## I. WHY THE STANDING OF TEAM OR THE UNITED STATES AFTER THE WALL

The "location" in the browser usually has three sources, which cannot simply be equated with your actual physical location.

| Location Source | Actual basis | Typical phenomena |
| :----------------- | :-------------------------------------- | :--------------------------- |
| IP Geographic Library | Attribution database for current export IP | Show Taiwan, the United States or other countries |
| Browser Geolocation API | Wi-Fi, base station, equipment location; usually authorization required | It could be close to the real location, or it could fail. |
| The site itself. | DNS, time zone, language, Cookie, account number, network features | Inconsistent with IP positioning results |

If you see a search page, web footer or an IP query site showing “Taiwan/United States”, the probability is only ** the result of a geo-database of proxy export IP**. These databases are lagging, mislabelled and not synchronized, particularly with regard to cloud manufacturers, resale of IP, IPv6 and CDN exports, with different websites showing that different countries are normal.

If you see the result of locator access from the browser, it may be from the browser's geolocation API, not the proxy IP. The proxy software does not normally automatically change the coordinates returned by Wi-Fi scan, system positioning or browser privileges to the proxy ' s location.

## QUIC is not improving.

QUIC is based on UDP transmission protocols, and HTTP/3 is usually based on QUIC. When it is closed, the browser tends to retreat to HTTP/2 or HTTP/1.1 on TCP; this** does not replace the proxy export or remove other positioning and wind control signals**.

Turning off QUIC may affect “whether certain UDP flows bypass proxies” or “whether a connection can be established”, but the following factors may remain:

| Factors that may still be exposed or influence determination | Annotations |
| :------------------------- | :----------------------------------------------------------- |
| Export IP | Which IP access proxy eventually to Google remains one of the most important factors |
| DNS                        | DNS may be analyzed by local networks, proxy nodes or remote ends, with different results |
| IPv6                       | If the proxy only takes over IPv4, while the browser or system still uses the original IPv6, there may be export inconsistencies |
| WebRTC                     | Some browsers or configurations may expose local network interfaces or candidate addresses; exposure depends on browsers and policy, [4] |
| Cookie and Account | Google may judge environmental consistency based on historical areas of accounts, login activities, language, payment information, etc. |
| TLS/Browser Features | Agent links and browser combinations may be used for risk scoring, but usually not a single determinant |
| IP Trust | Data centre IP, shared IP, heavily abused IP, which may trigger additional authentication or restriction |

As a result, ** QUIC is not the total switch for “Whether or not the wall has been turned over”.** It addresses up to one type of UDP/HTTP3 connection; closure of QUIC will not normally be effective if the root cause is an IP identified, a DNS leak, an IPv6 leak, a default rule or inconsistent account area.

## iii. Why Gemini has regular access after choosing “Research + AI, US Fixed IP”

In terms of phenomena, the most likely change is not the name “Research” per se, but the configuration changes ** the actual route and export quality of Gemini-related requests**.

### The “AI” rule may cover more Google/Gemini domain names

Gemini does not visit only one domain name. Pages, login, static resources, interfaces, wind controls and account services may use different Google domain names. If the normal proxy rules represent only the main station, other requests may still go straight-link or inappropriate nodes, there will be cases where the page is open, functionally unserviceable, or re-jumping or verification fails.

Policy groups such as “Research + AI” usually mean that it foresees more complete domain name rules for research or AI services, and may send Gemini-related requests to proxies. ** It may be that the rules cover more fully than the label text. **

### “US Fixed IP” provides stable, identifiable United States exports

Gemini's usability judgement usually combines area, IP, account status and risk signals. A fixed US IP could bring three improvements:

First, the IP geographical position is more stable, with a reduction of one request showing the United States, the next request showing the situation in Taiwan or elsewhere. Second, the page, interface, login and resource requests in the same session are more likely to use exports from the same country. Third, the credibility and historical use of fixed IPs may be better than shared, rotated or misused nodes.

The “Fixed IP” here does not necessarily mean residential IP, nor does it necessarily represent Google's recognition of it as a real user's family network; it usually means only ** the export address or the export map is relatively fixed**. Use also depends on the IP ASN, data centre properties, misuse history and Google risk rating.

### 3. Other configurations may change DNS and diversion at the same time

Some Clash configurations change the remote DNS, Fake-IP/Redir-Host mode, IPv6 processing, proxy rules and TUN take-over range in conjunction when switching to the policy group. So what you're observing is "recovering after US Fixed IP" -- it's probably a combination of changes, not just an IP country from Taiwan to America.

## IV. Most likely causal chains

In combination with your description, the most reasonable explanation is:

Under the general configuration, the browser or part of Gemini's request is not consistently exported by United States proxies, or uses exports identified as Taiwan, shared nodes, and abnormal data centre nodes; the closure of QUIC has not changed this root cause. After switching to “Research + AI”, the relevant domain name is more fully represented, and the US Fixed IP provides a stable United States export, and Gemini's area and risk has been determined to be in an acceptable state and thus back to normal.

This does not necessarily mean that the previous node “has no access to United States services at all”, but more likely that it ** has export consistency, IP credibility or rule coverage ** does not meet Gemini's wind control requirements.

## V. Recommendations in the following order

Check the exit IP first in the same Clash configuration, same browser window. Visit the IP Query Service to confirm whether IPv4 and IPv6 both point to the prospective country; if IPv4 shows the United States and IPv6 shows local or Taiwan, this indicates that there is an IPv6 export inconsistency.

Then check DNS. Confirms whether the DNS query for the Gemini-related domain name is done by the proxy side rather than by the local operator. If Fake-IP is used, confirm that there is no conflict between Fake-IP and TUN/System Proxy mode; if Redir-Host is used, confirm that DNS are not taken over by the system or by the browser DoH alone.

Check the rules for hits. Focus on whether the Gemini page, login, accounts and static resource requests all hit the same AI/US policy group instead of the main page walking proxies, interfaces or account services. The Network panel in the browser developer tool and the Clash connection log usually see this.

Finally clean session variables for comparison testing. An entirely new browser configuration file or privacy window can be used to test without changing the proxy node; if a new session is available and the original account number is not available, the account area, Cookie or historical risk status may be involved in the determination. Do not switch nodes in many countries frequently, which would make regional and login risk signals even more inconsistent.

## Conclusions

The positioning of Taiwan, the United States of America, is not necessarily a failure per se; it may be a result of a different IP geographic library or website extrapolation. It is also normal that QUIC is not valid because QUIC only deals with transmission protocols. The key to the real recovery of Gemini is probably the two changes between “AI rules put the request in its entirety” and “US Fixed IP provides a stable and more credible US export”.
