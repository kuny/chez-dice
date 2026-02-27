# chez-dice

Chez Scheme で書いた超シンプルなサイコロ（1〜6）CLIです。  
`roll` コマンド（シェルスクリプト）から `chez --script` で実行します。

## Features

- 1〜6 のサイコロを出力
- `roll 10` のように回数指定で複数回出力
- 実行ごとに seed を初期化（`real-time` + `cpu-time` を混ぜて 32bit に丸める）

## Requirements

- Chez Scheme（`chez` コマンドが使えること）
- bash（`roll` スクリプトで使用）

## Usage

### 1) `roll` を使う（おすすめ）

```sh
# repo 直下で
./roll        # 1回振る
./roll 10     # 10回振る
