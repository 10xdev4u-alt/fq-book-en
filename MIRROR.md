# MIRROR.md — how this repository is built

This repository is an **English mirror** of [`hoochanlon/fq-book`](https://github.com/hoochanlon/fq-book)
(《这本书能让你连接互联网》 / *This Book Can Get You Connected to the Internet*).

It is not a fork with a translation commit bolted on top. The entire upstream
history is replayed: every upstream commit becomes one commit here, in the same
order, with the same author/committer timestamps, touching the same set of
files, but with the content in English.

## Commit correspondence

* **One upstream commit → one commit here.** 195 upstream commits produce 195
  mirrored commits.
* **Timestamps are preserved.** Both `GIT_AUTHOR_DATE` and `GIT_COMMITTER_DATE`
  equal the upstream values, so `git log --date=iso` lines up commit for commit.
* **File sets are identical.** For every mirrored commit the set of paths is
  byte-identical to the upstream tree at the corresponding commit; only file
  contents are translated. Binary files and ASCII-only files are copied
  unchanged.
* **Provenance trailer.** Each commit body carries `Upstream: hoochanlon/fq-book@<sha>`
  so any mirrored commit can be traced to the exact upstream commit it replays.

## Messages

Upstream messages are mostly GitHub web-editor defaults ("Update README.md",
"1", "asd"). They are rewritten as [Conventional Commits](https://www.conventionalcommits.org/)
derived from the original subject plus the files the commit actually touches,
for example:

| Upstream subject | Mirror message |
| --- | --- |
| `Update README.md` | `docs(readme): update readme` |
| `Update _sidebar.md` | `docs(sidebar): update sidebar` |
| `Update ss-server.md` | `docs(ss-server): update ss-server` |
| `1` | `docs(<scope>): incremental content update` |
| `Add files via upload` | `docs: add files via upload` |
| `Delete pay-vpn.md` | `chore: delete pay-vpn.md` |
| `Rename hello.js to hello.py` | `chore: rename hello.js to hello.py` |

## Translation method

Content is machine-translated from Simplified Chinese with a structure-preserving
pipeline, then post-edited with a domain glossary:

* fenced code blocks, shell commands, configs and URLs are never translated;
* Markdown structure (headings, list markers, blockquote markers, table pipes,
  link targets, HTML attributes) is preserved verbatim — link labels and prose
  are translated separately;
* a glossary normalises the engine's recurring errors in this domain
  (代理 → *proxy*, 二维码 → *QR code*, 网卡 → *network adapter*);
* the resulting text is reviewed per pull request before it lands.

It is a faithful mirror, not a literary translation: expect MT cadence in places.
Improved wording for individual chapters is welcome as normal pull requests.

## Pull requests

History is landed in thematic batches (one batch per period of upstream
activity) through pull requests that are self-reviewed before merge, using merge
commits — so the first-parent history of `main` shows one merge per batch and
the mirrored commits are reachable through their feature branches.

## Licensing and attribution

Upstream is licensed **CC BY-NC 4.0**; this mirror is a derivative work and keeps
the same licence. See `NOTICE.md`. The upstream author is not an author or
co-author of any commit in this repository; attribution lives in `NOTICE.md` and
in this file.
