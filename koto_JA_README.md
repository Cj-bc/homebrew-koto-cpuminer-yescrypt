English: [README.md](README.md)

---

**現在macのみ対応しています**
これは、macでのビルドの際に必要なパッチを常時当てる設定にしているのが原因です。
そのうちOSによる切り替えもしますが、現状linuxbrewでは動きません。(未検証)


# KotoDevelopers/cpuminer-yescryptの非公式homebrew formulaです

# Installation

```bash
$ brew tap cj-bc/koto-cpuminer-yescrypt
$ brew install koto-cpuminer-yescrypt
$ # or
$ brew install Cj-bc/koto-cpuminer-yescrypt/koto-cpuminer-yescrypt
```

# 公式のインストール方法との違い

注意: *"koto-miner"とういうコマンド名でインストールされます。*
そのため、従来通りの起動方法(以下)ではなく、

```bash
 $ ./miner ~
```

以下のように起動させてください。

```bash
$ koto-miner ~
```
