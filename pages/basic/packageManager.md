# Homebrew と venv

パッケージマネージャとは何ですか？
> パッケージマネージャまたはパッケージ管理システムは、コンピュータプログラムのインストール、アップグレード、設定、削除のプロセスを一貫した方法で自動化するためのソフトウェアツールのコレクションです。 - Wikipedia

パッケージマネージャにはさまざまな種類があります。そして、OS レベルのパッケージマネージャとアプリケーションレベルのパッケージマネージャといった、異なる階層のものがあります。

OSレベルの場合、
- Windows：vcpkg
- Mac：Homebrew
- Ubuntu：apt

アプリケーションレベルの場合、
- PHP：composer
- JavaScript（node）：npm、Yarn
- Ruby：gem
- Java：Maven、Gradle
- Python：pip、conda
- R：conda、CRAN

このページでは、Homebrew をインストールと venv の作成について説明します。

## [Homebrew](https://docs.brew.sh/Installation)
Homebrewは、macOS（または Linux）を補完するパッケージマネージャです。
インストールするには、ターミナルに次のコードを入力します（最新のコードを[ここで](https://brew.sh/)確認する必要があります）;
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

次の出力が表示されます：
```zsh
==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/kensuke/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh
```

Homebrew を PATH に追加するために次を入力します（Usernameを変更してください）：
```zsh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/Username/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

成功したかどうかを確認しましょう！
```zsh
brew --version
```
`Homebrew x.x.x` と表示された場合、成功です。


(venv)=
## [Venv](https://docs.python.org/3/library/venv.html)
Python の仮想環境を作成するには、venv が最も簡単なツールです！ Python のための pyenv や anaconda などもありますが、初心者には必要ありません。venv を作成しましょう。

venv を作成したり削除したりするのは非常に簡単です。まず、ホームディレクトリにテスト用の venv を作成します。

```zsh
python3 -m venv ~/test
```
次にvenvをアクティベートします：
```zsh
source test/bin/activate
```
または
```zsh
. test/bin/activate
```

これでvenvがアクティブになります。ターミナルのユーザー名の左側に venv の名前が  `(test) Username@MacBook-Pro ~ %` のように表示されます。
Pythonのバージョンを確認してみましょう：
```zsh
python -V
```
すると `Python 3.x.x` が表示されます。

これで新しい venv を作成し、アクティブにしましたが、実際にはパッケージはまだほとんどありません。
`pip list --format=freeze` コマンドで venv 内のパッケージが表示されますが、今の段階では基本的なパッケージしかありません。
何かをインストールする前に、`pip` をアップグレードする必要があるかもしれません。これは Python のパッケージマネージャです（以下の Username を変更してください）：
```zsh
/Users/<Username>/test/bin/python3 -m pip install --upgrade pip
```
次にパッケージをインストールしてみましょう（ここでは numpy を使用します）！
```zsh
pip install numpy
```
そして確認してみましょう：
```zsh
pip list --format=freeze
```
`numpy==x.xx.x` のように表示されます。

初心者として Python を使用する場合は、matplotlib、pandas、jupyter-lab をインストールすることをお勧めします；
```zsh
pip install matplotlib
pip install jupyterlab
```

Matplotlib は可視化のためのライブラリ、pandas はデータ分析と操作のためのライブラリ、jupyter-lab はウェブベースのユーザーインターフェースを提供するライブラリです。また、科学的な計算にはScipyも便利なパッケージです。
これでテスト用 venv に多くのパッケージがインストールされました。`pip list --format=freeze` を試してみてください。ただし、明らかに4つまたは5つのパッケージしかインストールされていないように思うかもしれませんが、実際には、jupyter-lab とともに多くのパッケージがインストールされています。
venv を非アクティブにするには、ターミナルで単に `deactivate` と入力します。再度アクティブにするには、`source test/bin/activate` を入力します。

````{warning}
venv を削除する場合は、ターミナルで次を入力して削除します：
```zsh
rm -rf ~/test
```
````

## Jupyter-labを使用しましょう！
jupyter-lab をインストールしたので、使ってみましょう！！

```zsh
jupyter-lab
```
デフォルトのブラウザが表示され、jupyter-labが開きます。

jupyter-lab を非アクティブ化するには（venvではなく）、ターミナルで `Control + C` を入力し、終了するかどうかを尋ねられたら y（yes）を入力します。
詳細については、[Jupyter Book](../jb/jb.md) ページを参照してください。

```{note}
- venvの名前の変更
- venvの親ディレクトリの名前の変更
- venvの場所の変更  
は推奨されません。
```
