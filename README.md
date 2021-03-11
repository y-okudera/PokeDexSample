# Pokedex



## Manage tools

BundlerとMintで各種ツールの管理をします。

|  Tools  |          Description           |
| :-----: | :----------------------------: |
| Bundler |        Ruby gemsの管理         |
|  Mint   | Swift command line tool の管理 |



## Setup

### Homebrewのインストール

インストールしていない場合は、[Homebrew](https://brew.sh/index_ja)のインストールをしてください。

### Bundlerのインストール

インストールしていない場合は、gemでインストールしてください。

`$ gem install bundler`

インストール済みの場合は、バージョンを確認することができます。

```
$ bundle -v
Bundler version 2.2.1
```

### 各種ツールのインストール

初回は以下のコマンドで、ツールをインストールします。

`$ make bootstrap`



## Build

プロジェクトファイル（xcodeproj）はXcodeGenでproject.ymlの情報から自動生成するため、Gitの管理対象外とします。



以下のコマンドで、xcodeprojを生成（または更新）します。

`$ make project`



## Intermediate file（中間ファイル）

Xcodeのバージョンを変えた時など、ビルドが通らない時は中間ファイルを削除してやり直してみてください。

`$ make clean`



### テンプレートの使用

新しい画面を実装する際には、Generambaを使用してソースコードを生成します。

以下のコマンドでPresentation層のMVVMのテンプレートからソースコードを生成します。

`$ generamba gen <モジュール名> mvvm_presentation`

（トップ画面の場合）

`$ generamba gen Top mvvm_presentation`



※ UseCaseがある前提のテンプレートですが、UseCaseは自動生成されないので手動で生成してください。

