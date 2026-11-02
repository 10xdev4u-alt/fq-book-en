# Summary of the digital certificate offensive

## Digital certificates

?>Recommended Browse[What's your signature?](https://www.ruanyifeng.com/blog/2011/08/what_is_a_digital_signature.html)

### Certificate Profile

Open key authentication (English: Public key certificate), also known as digital certificate or identity certificate. It is an electronic document used in the public key infrastructure to prove the identity of the public key owner. This document contains information on the public key, the identity of the owner (subject) and the digital signature of the digital certificate certification authority (issuer) to ensure that the document is correct as a whole.

With this document, the owner can identify the computer system or other users, thereby gaining confidence in the other party and authorizing access to or use of certain sensitive computer services. A computer system or other user can verify the contents of the certificate through a certain program, including whether the certificate has expired and whether the digital signature is valid. If you trust the issuing authority, you can trust the key on the certificate and encrypt a reliable communication with the owner with the public key.

### Weaknesses and defences

Weaknesses of the certificate, once the certificate agency has been invaded, the hacker can unknowingly issue a certificate of false identity and attack fraud as an intermediary. The industry has developed different defensive strategies, such as the release of new e-certificates by certificate institutions, which allow the public to check whether the electronic certificates received at hand may not be duly authorized, and website administrators to check periodically whether there are unidentified institutions issuing unauthorized certificates. On the other hand, the HTTPS website could also identify its fixed public key, rendering fraudulent certificates of intermediaries unusable. In addition, the validity of certificates can be checked through third-party user security software.

> From[wiki - Open Key Authentication](https://zh.wikipedia.org/wiki/%E5%85%AC%E9%96%8B%E9%87%91%E9%91%B0%E8%AA%8D%E8%AD%89)I personally suggest that you read Wiki.

## SNI, RST

### Server name instruction (SNI)

Large web sites usually join a CDN-accelerated team to meet user-second page needs, and when users visit a website, domain names are analyzed to the public web IP of the nearest CDN server to the user, the browser is connected to the CDN server that corresponds to the public Internet IP. The CDN server is a public Internet IP, possibly a multi-client website (x.com, y.net,z.cn). How does the CDN server know which client site is connected when the browser is actively connected? The answer is SNI, the user enters a.com back, the CDN server can determine on the basis of the value of the SNI, and the user originally wanted to connect a.com and establish such a connection to return the resource to the browser.

This can also explain why the IP from the ping domain name cannot access the site. Since users do not use domain names for IP address access, the CDN server does not know which one of the multiple domain names the user wants to enter the virtual host, which is why the IP address cannot access the site.


In order for the SNI agreement to work, the vast majority of visitors must use the Web browser to make it work. Users who use an unrealized SNI browser will be provided with a default certificate and are likely to receive a certificate warning. Although SNI is already supported by most browsers and servers, the current status quo may result in some user incompatibility. At this point, you can choose our multi-domain name certificates to fix this perfectly.

Since SNI information is not encrypted, reviewers are allowed to distinguish between “real” and “false” services or to identify website domain names accessed by users. It has been used for Internet censorship in China. Currently, the developers of Cloudflare, Mozilla, Fasty and Apples have begun to develop a draft code for encryption server name instructions (ESNI).

### TCP reset attack

TCP replacement attack refers to the use of a false TCP replacement package to interfere with the connection between the user and the website. As a result of the GFW identification of SNI, this technology was used for TCP keyword blocking and a TCP reset attack will be carried out on the site. So there's a problem: I can ping through the domain name, the IP address, but I just can't access the page.

Use[IPsec](https://zh.wikipedia.org/wiki/IPsec)Security data sources, data integrity certification, etc., can be avoided, resulting in TCP replacement attacks due to the recognized domain name of SNI. There are also studies that suggest that the creation of connections can also be maintained by connecting the parties with appropriate filters to discard the replacement packages used to block them.

The reshuffle is a message from the TCP agreement. In general, for example, when the server does not have the requested port or other connection information that does not match, the system TCP protocol indents respond to a REET notification to the client, and it can be seen that the connection replacement function was intended to respond to, for example, an unexpected restart of the server. It would be better to send the connection to replace the package than to dump the package directly, because if the package was dumped directly, the client did not know the specific network, and the re-issuance and timeout mechanism based on the TCP protocol would keep the client waiting and re-issuing.

### Domain Name Prefix

The Domain front (English: Domain fronting) is a technique that hides the real end points of connections to circumvent Internet censorship. When operating on the application layer, the domain prefix allows the user to connect to the blocked service via HTTPS, while the surface is like a communication with another completely different site.

This technology is based on the use of different domain names in different communication layers. The explicit DNS request and the TLS name instruction (SNI) use a harmless domain name to initialize the connection and publish it to the reviewers, while the blocked domain name actually to be connected is sent only after the creation of an encrypted HTTPS connection so that it is not explicitly exposed to the network reviewers.

It is often difficult for a reviewer of this technology to distinguish between disguised flows and legal flows, forcing the examiner to choose whether to release all seemingly harmless flows or to block the flow of the area altogether. A complete blockade could bring significant additional damage.


