日本語: [koto_JA_README.md](koto_JA_README.md)

---

**Available only for macOS for now**

This formula patches for macOS build.
I'll make it available in linuxbrew someday.


# this is unofficial homebrew formula for koto-cpuminer

## installation

```bash
$ brew tap cj-bc/miners
$ brew install koto-cpuminer-yescrypt
$ # or
$ brew install Cj-bc/miners/koto-cpuminer-yescrypt
```

## Differs from official miner

Note: *executabe will be installed as "koto-miner"*
So, please don't execute like:

```bash
 $ ./miner ~
```

But do this:

```bash
$ koto-miner ~
```
