# IPFS

> Original language:[IPFS](https://ipfs.io/ipfs/QmV5ZVQxXURKPDcVDW8WjpLCiQYvNzg173XcB6rYFevoXm/#!index.md)Author:[Mr.Maple](https://github.com/daijiale)

### IPFS Profile

IPFS, full name InterPlanetary File System, Chinese: An interstellar file system, is a network transfer protocol designed to create durable and distributed storage and sharing of documents.

It is a peer-to-peer media distribution agreement where content can be located. Nodes in the IPFS network will constitute a distributed file system. It is an open source project that has been developed since 2014 by Protocol Labs with the help of open source communities. It was originally designed by Juan Benet.

IPFS is a point-to-point super-media agreement that can make the network faster, safer and more open. It is a global, point-to-point distributed filesystem that attempts to connect all computing devices with the same file system

<!-- ![](https://ipfs.io/ipfs/QmUSeaFSDkhz82dDfE1XbVZ7GEb7WntiZNYKRg3wfMN3kp?1.png) -->

![](https://i.postimg.cc/ncyQ97xG/ipfs-io.png)

IPFS - Also known as the "Star File System". Simply put, it is a point-to-point distributed file system (like the Bitcoin technology) that allows documents stored on the IPFS system to be accessed quickly in any part of the world and not affected by firewalls (without cyberagents) through bottom-up protocols.

The Internet protocol that we now use is called -- the hypertext protocol HTTP. Such agreements have a supracentrism character.

In other words, you can download files from the Internet or browse a page, and only get the information you need from one data centre at a time. If the data centre fails or is restricted or attacked, there will be problems with missing documents or web pages that cannot be opened. For example, you can't download any of the information that you have on a cloud, or the web page you want to visit can't be opened for some policy reasons.

And the purpose of IPFS is to solve these problems. In some respects, IPFS is like Web, and you can also use IPFS as a link to an Internet address. IPFS, however, was decentralised and there was no problem with Web's main network failure. So, **IPFS completely replaces HTTP, too.**

### The difference between IPFS and HTTP

#### HTTP four big pains.

<!-- ![](https://ipfs.io/ipfs/QmU6CuRkqHETWhoSi8JV4SUAPKADhLBUkva7kUvnp4DGb3?0.png) -->

![](https://i.postimg.cc/ht8hJ5pK/ipfs-is-the-distributed-web.png)

> HTTP is inefficient, servers are expensive

Using the HTTP protocol, you can download only one file from a computer server in the last time, instead of getting it from multiple computers. Video transmission via P2P will save 60 per cent of bandwidth costs.

> History files deleted

The average useful life of web pages is 100 days, and a large number of website documents cannot be kept in the long term. Some important documents may disappear permanently on the Internet due to mishandling.

> Centralized networks limit opportunities

The Internet has been a catalyst for human progress, but a centralized network that is easily controlled is a threat to its virtuous development.

> Network applications are too dependent on backbone networks.

To ensure the reliability of the data, the applications we have developed rely too heavily on large central servers and secure the data through a large number of backups.

The HTTP protocol has been in use for 20 years, from HTTP 1.0 to today 's HTTP5, the web page is becoming more and more beautiful,** the Browner/Server model behind it has never changed.**

#### IPFS is different from the quality of HTTP pain.

> Permanent storage of Internet information

IPFS is a distributed storage network (similar to SIA) where any resources stored in the system, including text, pictures, sound, video, and website codes, generate a unique address when the al-Hashi calculation is done through IPFS. In the future, you can open them through this address. And this address can be shared.

As a result of the protection of encryption algorithms, the address has a non-verbal and deleteable character (in a sense, there is a risk that the password may be altered or deleted, but with a very low probability). So once the data is stored in IPFS, it's permanent. For example, some of the resources we often encounter remove problems that cannot be visited.

This will not happen on IPFS. Even if the site is withdrawn, the web page will be regularly accessed as long as the network that stores the site ' s information remains. The more distributed network the site is, the more reliable it is.

Unlike SIA, IPFS storage is generally public information and is accessible to the general public. It has been argued that** if IPFS were to replace HTTP entirely, then the history of mankind would be permanently preserved and would not be altered**.

It also means that everything human beings do is recorded, right or wrong.

> Addressing excessive redundancy and achieving a shared economy

If you like a movie and you're worried about losing the movie resources, usually you download it on your computer. In 2016, for example, the number of downloads reached 1.65 million, and the total number of downloads was even more alarming. The inevitable problem is that the same film is being stored repeatedly, causing a great waste of memory resources. That's the downside of the HTTP protocol. An excessive number of back-ups of the same resources would cause excessive redundancy.

And IPFS's appearance can be a good solution. IPFS uses the stored file for a one-time hashi calculation, with two documents of equal value. So the user needs to use the same Hash value to access the file, which is the address of the file. Just get this address and you can share the resources.

Based on the permanent storage features above, you don't have to worry about finding a movie, or back-up, because you can get it if you have a few people on the global computer. Instead of repeating hundreds of thousands of copies.**

> It is also based on content, not domain.

The IPFS network operates a block chain, the Hash value list used to store Internet files, and every time a web visit is made, the address of the content (file) is checked on the chain.

The document (content) has the uniqueness of its existence, and a file is added to the IPFS network and will be based on the calculation of a unique encrypted Hash value for the content. This will change our habit of using domain names to access the network.

Provides a historical version controller (like Git) for files and allows multiple nodes to save different versions of documents.

> Node storage incentive, token split

By using the incentive of FileCoin, the nodes are given the power to store data. Filecoin is a secure currency-driven storage network**. Miners obtain Filecoin by providing open hard disk space for the network, while users use Filecoin to cover the cost of storing encrypted files in a decentrized network**.

### IPFS working principles

<!-- ![](https://ipfs.io/ipfs/QmZ7t61ZkJESFhJCsifMAkXtof6dZvcczyx7J4WQDnBsAf?0.jpg) -->

![](https://i.postimg.cc/yYc0Pnvb/ipfswork.jpg)

* Each file and all the pieces in it are given a single fingerprint called encrypted hash.
* IPFS removes duplicated documents with the same Hash value from the network, and it is possible to calculate which documents are redundant. And track the historical history of each document.
* Each network node only stores what is of interest to it, as well as some index information that helps to figure out who is storing what.
* When you search for a file, you can find the node of the file to store it and the desired file on the web.
* Using what is known as the IPNS (decentro-naming system), each document can be named as a readable name in collaboration. By searching, it is easy to find the documents that you want to see.
* As can be seen from the introduction of IPFS, IPFS envisages that all network terminal nodes should not only act as Brownser or Clarent, but that everyone can act as operators of the network, and everyone can be a server.

