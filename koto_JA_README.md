English: [koto_README.md](koto_README.md)

---

*Linux環境にも対応しました* (多分)
ただし **未検証です**
もしlinux環境で正常にインストールできましたら、issue等で報告いただけると嬉しいです。


# KotoDevelopers/cpuminer-yescryptの非公式homebrew formulaです

# Installation

```bash
$ brew tap cj-bc/miners
$ brew install koto-cpuminer-yescrypt
$ # or
$ brew install Cj-bc/miners/koto-cpuminer-yescrypt
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
