# Simple use of IPFS

## Foreword

After looking at the readers' mailboxes, it is true that it would have been impossible to remove the warehouse if the irresistible factor had been ordered to do so; moreover, I am also concerned that the deletion of several projects for the reconstruction of the book was also due to other causes and to the inappropriate operation involved, and this time it will be necessary to proceed with the use of decentrized web applications such as ipfs.

Some of the problems encountered were the closure of the ipfs process following the uploading of documents, while others were unable to effectively access the site. For this purpose, a deliberate search for relevant questions has led to a reasonable explanation:

> I found a VM to install pfs and added the same file ( "hello world") to the pfs, and found that rash was the same. It is believed that a large number of people around the world may use "hello world" as a document when testing ipfs.

> So when you visit the address,`https://ipfs.io/ipfs/QmT78zSuBmuS4z925WZfrqQ1qHaJ56DQaTfyMUF7F8ff5o`It's not like you're visiting this hello.txt file on your own computer, unless it's unique to your computer on Earth.

> Document`https://ipfs.io/ipfs/QmXZXP8QRMG7xB4LDdKeRL5ZyZGZdhxkkLUSqoJDV1WRAp`The content is unique, and only on my own computer, I'm afraid, if I do not turn on and start the ipfs process, it may not be accessible.

> — From[Wang Wai soldier's blog](https://github.com/wbwangk/wbwangk.github.io/wiki/IPFS)

In other words, the inability to access the Internet-published IPFS node links provided by the other party is likely to be a unique resource and a process that closesipfs.


## Install

Open[ipfs](https://ipfs.io/docs/install/), select[getting started with ipfs](https://ipfs.io/docs/getting-started/)

<!-- ![](https://ipfs.io/ipfs/QmVqhqctR8HaHEaLBsT8oCy5u2cDWH3xp5nWSgCjMGJTJJ?0.png) -->

![](https://i.postimg.cc/Y0SyFZ1Z/2018-05-27-092613.png)

[install ipfs now](https://ipfs.io/docs/getting-started/)

<!-- ![](https://ipfs.io/ipfs/QmT8nWpg14T2Vts7LRWiNMi4ZcXd3q96DYAYq8cFB3vF5j?2.png) -->

![](https://i.postimg.cc/vHg0dWXr/2018-05-27-093125.png)

[download ipfs for your platorm](https://dist.ipfs.io/#go-ipfs)

<!-- ![](https://ipfs.io/ipfs/QmTDGnkpwcuN6tQjnP7R7XpTjLxr9MXwGYKBBbAqXN7ako?3.png) -->

![](https://i.postimg.cc/fLqfGL9q/2018-05-27-093548.png)

Click to Download

<!-- ![](https://ipfs.io/ipfs/QmSTjFqRHEjtW6LWYmE9eLy2YRGjKUmUQgX8JznX6N28Ui?2.png) -->

![](https://i.postimg.cc/XvVKXFKD/2018-05-27-093946.png)

Unpressure and use CLI to enter the current folder, enter`ipfs.exe init`Finish Initialization

<!-- ![](https://ipfs.io/ipfs/QmbAL6HMqHTc8stSxQRhowh5WBcVEiW4i4NsmTe6hcjS78?4.png) -->

![](https://i.postimg.cc/0yCWt9cF/2018-05-27-095305.png)

`ipfs.exe daemon`Start daemon

<!-- ![](https://ipfs.io/ipfs/QmRQf6jx8U9VeFfu2gr8T7JhQX5zRdSPgaWmF7BipWrjvn?0.png) -->

![](https://i.postimg.cc/D0s51hSC/2018-05-27-095836.png)

Enter`http://localhost:5001/webui`Enter main interface, in`connection`There are 267 nodes in the section, and this number is dynamic.

<!-- ![](https://ipfs.io/ipfs/Qmf2iphYYZbzoZXisJB6rfGTdEU5MGzRwbPLaoobzA1Nkt?2.png) -->

![](https://i.postimg.cc/T2rrjCkH/2018-05-27-100854.png)

## Upload File

Yes.`files`Click on a block`create folder`Synchronising folder failed: %s: %s`hash`Load

<!-- ![](https://ipfs.io/ipfs/QmTWV2wo9on5oqgcgQq5N4hRyfLrNY3RXgcvtGfE13Shjb?2.png) -->

![](https://i.postimg.cc/vZpBNdT7/2018-05-27-113127.png)

Select a file to upload, right`copy hash`, to paste input box GO in the DAG plate

<!-- ![](https://ipfs.io/ipfs/QmUMhW3H3ApEPihJs9gHxfAG1SExeyUuWZtoM2VmtCpQz7?3.png) -->

![](https://i.postimg.cc/qq5068Cc/2018-05-27-114055.png)

<!-- ![](https://ipfs.io/ipfs/QmeoED47NpN6HHEkiSnz4Mt32XJpoWtX1AQDuC1LaojUA8?2.png) -->

![](https://i.postimg.cc/dQbJF9wv/2018-05-27-114452.png)

Copy as above Hash connection and add`htttps://ipfs.io`

<!-- ![](https://ipfs.io/ipfs/QmRAbdqGsKiZjScrztkftxx9XTArenE8toKkvCZfLhvP8M?3.png) -->

![](https://i.postimg.cc/BvVdgqvs/2018-05-27-114812.png)

Hash links are always too long to use.[tinyURL](https://tinyurl.com/)Generate short links

<!-- ![](https://ipfs.io/ipfs/QmfSA2veGGcndSWXpmxhn3zBNux4i1JMHv8Wm3fRr9nmbz?3.png) -->

![](https://i.postimg.cc/QCrY4VZL/2018-05-27-120243.png)

Test

<!-- ![](https://ipfs.io/ipfs/QmVTmfExQdvVjrosgsmqKT5hk4wABW756V7pA6YcoN9hCu?2.png) -->

![](https://i.postimg.cc/9f7B6Vpc/2018-05-27-121017.png)

You're willing to use it as an infinity memory, but no one, including you, can delete it; if it's speed, chat groups, question-and-answer communities, and all kinds of propaganda, it should be faster.

## Deployment of static websites

I've provided in advance a static website document based on gitbook. Catalog

<!-- ![](https://ipfs.io/ipfs/Qmf337dkc4u8Vvz3afx6hVQwDutSagkEh1nPW7dRtSCpEC?2.png) -->

![](https://i.postimg.cc/J4FZMvt0/2018-05-27-164203.png)

Command line to the top folder of the folder, execute`ipfs add -r web-book`Upload entire directory

<!-- ![](https://ipfs.io/ipfs/QmYAHqw57WUfvTyLEd8EgAVE6gN38ykrZJg1bV7ci5z4de?0.png) -->

![](https://i.postimg.cc/X7BXcJ7N/2018-05-27-171923.png)

`web-book`The last line of the folder's command output, the Hash, is the root directory of your website.

<!-- ![](https://ipfs.io/ipfs/QmSqfSqZCjZ2BGr75sK816cRGHksoESnYK8CPXfg6cjKUF?2.png) -->

![](https://i.postimg.cc/fLkMz2VW/2018-05-27-172511.png)

Copy last line Hash value

<!-- ![](https://ipfs.io/ipfs/QmcP41JKtYrq7TuS3pdU2Hmh5zpTQsDKdmniFgQyJcgwb9?4.png) -->

![](https://i.postimg.cc/VkD6zbKR/2018-05-27-173142.png)

Enter`localhost:8080/ipfs`Add a copy of the Hash value later

<!-- ![](https://ipfs.io/ipfs/QmW7yPmdmZXPanUrDfVFm7C38TjdB3B3gMWQXjXoU2iCf4?1.png) -->

![](https://i.postimg.cc/G2YdTBx6/2018-05-27-173114.png)

Although the data has been added to the current pfs node, it is not synchronized to the pfs network; it is only offline deployment at this time and is now posted on the Internet.

Run.`ipfs add -r`, create a new cmd command line window, enter the ipfs folder and enter it again.`ipfs.exe daemon`It was published.

![](https://i.postimg.cc/mrC5Q7K3/2018-05-27-175819.png)

Test

<!-- ![](https://ipfs.io/ipfs/QmdPPXYVMJ2JTMFChQbdQy2eApMiD6Dr763s27YD46n35b?3.png) -->

![](https://i.postimg.cc/3wXtyYDn/2018-05-27-181051.png)

## Synchronize IPSAS updates

For the reason of decentrization, it cannot be changed once uploaded, which requires a new ipns directory and nodeid map at the new Hash value to be accessed by the user`ipfs.io/ipns/nodeid`View relevant updates, that is, previous`ipfs.io/ipfs/directive Hash`It's been abandoned; it also shows that one of the disadvantages to go to centre is to generate a lot of garbage, although the link is long...

For the demonstration.`book.json`A new plugin was added and used again`ipfs add -r web-book`command to create a new Hash value.

<!-- ![](https://ipfs.io/ipfs/QmUokTS9iEMAvcBf2r4AuGXkgHzmoC97LuPLtnS3Tc3miz?4.png) -->

![](https://i.postimg.cc/YSR1K9FK/2018-05-27-213304.png)

Use`ipfs name publish`Follow the Hash in the station root directory for release

<!-- ![](https://ipfs.io/ipfs/QmPrEGfXt53aZdXwkRgPC9qFLaziKZKXjy2sXgXQmTDdPk?2.png) -->

![](https://i.postimg.cc/65Z1vDg2/2018-05-27-220829.png)

Use`ifps id`View Nodeid

<!-- ![](https://ipfs.io/ipfs/Qma7Ww1tWrrdX4aauMqYueeNnhuXR1Ms16JDkDCcSofYM1?1.png) -->

![](https://i.postimg.cc/ZqWN9hsX/2018-05-27-221733.png)

`ipfs name resolve`Add detected nodesid after

<!-- ![](https://ipfs.io/ipfs/QmaL3MCdyBbBS5n5X2sweyMj1pKW2UgZka4jY9rSQKtd3F?0.png) -->

![](https://i.postimg.cc/ZRhqTkG8/2018-05-27-222850.png)

It's time for local visits.`Localhost: 8080/ipns/nodeid`

<!-- ![](https://ipfs.io/ipfs/QmULUBN4wRUSQ5NquDxXwAyvGuXogymDBCbQbXQsB8BhvR?1.png) -->

![](https://i.postimg.cc/Zn54RJVd/2018-05-27-223735.png)

Turn off the previous use`ipfs daemon`The command window, which opens the command line window, can rerun the directive, and may be slow due to the low number of visitors and the interference of the GFW.

Test

<!-- ![](https://ipfs.io/ipfs/QmUe1eWwnUFPDpjiSu75Gyv3QxpaHm8Xb2aVJMmuydwXxk?2.png) -->

![](https://i.postimg.cc/qMY4JVnN/2018-05-27-225417.png)

## Backup

Backup is important, but it's easy.`C:\Users\lorem\.ipfs`Here we go.`config`Just copy it to the cloud. Lorem is my user. First Name

<!-- ![](https://ipfs.io/ipfs/QmWdvB4mskcD6oPEWJLHB16JspxxdSQh9uog4JoaSgUR2v?3.png) -->

![](https://i.postimg.cc/xTkVFx7n/2018-05-27-232208.png)
