
## 現象





* [参考](https://twitter.com/NowOrNeverIgo/status/709045595642527744)

> うちではログがgzip圧縮で25GBあれば必ずembulk落ちるんだが他ではでてないのかな？
> https://twitter.com/NowOrNeverIgo/status/709045595642527744

> @hiroysato プラグインはjsonlのみ利用していました。
common-compressを利用してみたところ問題なく送信可能で、若干速度が速かったように感じます。
落ちるときはmsgpack作成かgzipデコード段階だと思います。
> https://twitter.com/NowOrNeverIgo/status/709724076353261568

> @hiroysato またログファイルは300MB＊80ファイルでトータル30GB近い量で、
> １ファイルではありません。定常的に利用することが決まったので、安心して利用できるとありがたいです
> https://twitter.com/NowOrNeverIgo/status/709724663086100480

## サンプル

https://github.com/ikarin/embulk_data


## 環境

https://github.com/ikarin/embulk_data/blob/master/version.txt

* embulk-decoder-commons-compress (0.3.3)
* embulk-filter-column (0.3.1)
* embulk-formatter-jsonl (0.1.4)
* embulk-output-td (0.2.1, 0.2.0)
* embulk-parser-json (0.0.1)
* embulk-parser-jsonl (0.0.1)

## 確認事項

* OS
* Javaのバージョン
* サンプルデータ
  * 1行のバイト数
  * 一ファイルの行数

## サンプルデータ

```json
{
  "param1": "2016-03-18 20:48:38",
  "param2": "19RQH1NyQubF2dupEHLcJSPR7WbixF3Fb6",
  "param3": "1LeANY8ZKqmmtVwhemCt4KQUxsn8j1n4Uu",
  "param4": "1LgMNnDA11vMTBb18JgufkGPi9YVZgkPWo",
  "param5": "1KHxLPUsPECewpYHYEupDCTsPw8Gt7w1tp",
  "param6": "1NeitowkdRAHjn8K4BvXM9bmwVJha5wmWX",
  "param7": "1FZzUd7JV5b4GUwJkANooKpWmJJgaiA464",
  "param8": "1FoAeUAoAp1Hu7QTGxoyfuDhtQuzzKwzs6",
  "param9": "1DtnBSGvZ7oJXyMDGouwqM1kJJifFTVug7",
  "param10": "14N8aiPcKhVNgePiUkcDCRvFU3g8j5n6FN",
  "param11": "1JccoJwpjcnLjQTvnnMmCHus2PRo1Gd5pY",
  "param12": "1C8gNcbwgBAQtShS9XknpyjbJHwg1G9yzd",
  "param13": "1GpfwZbsNahAV85Gz2QxwMxWoZiWsgEpsS",
  "param14": "1P8yJUZYq2PBQ5WDtFYLq2QsRxNSzqjS3V",
  "param15": "1GU2zcp8dq9aSGePkLZoJGsgQ6puJk5Zog",
  "param16": "1Ncssc9M7AqFSvKdmkZXcjvqqJBqH2Mn2Y",
  "param17": "18hXuQM3pPhF123ByEm4T4b4hugf3oFnaw",
  "param18": "1FnfKrAQ9AjzqdknumuESHBcYbnGzKGYut",
  "param19": "14RwDrn1ZgXLPR77Fw1vwe5krhE691Kfun",
  "param20": "1DUhzhmDdhRCcB8o9FWEJ5UBXSSRxgZD2j"
}
```


```
*************************** 1 ***************************
   time (timestamp) :
 param1 (   string) : 2016-03-18 20:48:38
 param2 (   string) : 19RQH1NyQubF2dupEHLcJSPR7WbixF3Fb6
 param3 (   string) : 1LeANY8ZKqmmtVwhemCt4KQUxsn8j1n4Uu
 param4 (   string) : 1LgMNnDA11vMTBb18JgufkGPi9YVZgkPWo
 param5 (   string) : 1KHxLPUsPECewpYHYEupDCTsPw8Gt7w1tp
 param6 (   string) : 1NeitowkdRAHjn8K4BvXM9bmwVJha5wmWX
 param7 (   string) : 1FZzUd7JV5b4GUwJkANooKpWmJJgaiA464
 param8 (   string) : 1FoAeUAoAp1Hu7QTGxoyfuDhtQuzzKwzs6
 param9 (   string) : 1DtnBSGvZ7oJXyMDGouwqM1kJJifFTVug7
param10 (   string) : 14N8aiPcKhVNgePiUkcDCRvFU3g8j5n6FN
param11 (   string) : 1JccoJwpjcnLjQTvnnMmCHus2PRo1Gd5pY
param12 (   string) : 1C8gNcbwgBAQtShS9XknpyjbJHwg1G9yzd
param13 (   string) : 1GpfwZbsNahAV85Gz2QxwMxWoZiWsgEpsS
param14 (   string) : 1P8yJUZYq2PBQ5WDtFYLq2QsRxNSzqjS3V
param15 (   string) : 1GU2zcp8dq9aSGePkLZoJGsgQ6puJk5Zog
param16 (   string) : 1Ncssc9M7AqFSvKdmkZXcjvqqJBqH2Mn2Y
param17 (   string) : 18hXuQM3pPhF123ByEm4T4b4hugf3oFnaw
param18 (   string) : 1FnfKrAQ9AjzqdknumuESHBcYbnGzKGYut
param19 (   string) : 14RwDrn1ZgXLPR77Fw1vwe5krhE691Kfun
param20 (   string) : 1DUhzhmDdhRCcB8o9FWEJ5UBXSSRxgZD2j
```

## 検証環境

* OS: CentOS7
* Java: OpenJDK 1.8
* サンプルデータ:
  * 1ファイル: 100万行
  * ファイル数: 151個
  * 総容量: 34GB


```
2016-03-21 02:34:27.395 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 04:54:51.551 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 07:14:20.422 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 09:35:28.418 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 11:55:23.673 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 14:14:17.245 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 16:34:53.242 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 18:49:57.327 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 21:03:18.645 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-21 23:24:07.235 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 01:41:57.931 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 03:58:40.669 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 06:17:49.336 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 08:32:40.315 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 10:51:22.567 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 13:04:16.918 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 15:22:17.743 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 17:34:38.313 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 20:00:02.031 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
--
2016-03-22 22:22:12.632 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"log/log.txt.gz"},"out":{}}
** End: 0 **
```
