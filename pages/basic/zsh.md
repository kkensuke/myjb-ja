# Zsh
> last update: {sub-ref}`today`

```{admonition} Zsh
Zシェル（Zsh）は Unix のコマンドシェルの1つです。対話型のログインコマンドシェルとして使用することができ、強力なシェルスクリプトコマンドインタプリタとしても機能します。Zsh は、Bourne シェルの拡張版として、多くの改良が加えられたものと見なすこともできます。さらに、一部の便利な機能が bash、ksh、tcsh からも取り入れられています。 [- Wikipedia](https://en.wikipedia.org/wiki/Z_Shell)
```

## `.zsh*` ファイルを `zsh/` ディレクトリで管理する
```{image} img/zsh.png
:width: 600px
:align: center
```

ホームディレクトリ内に `.zsh*` ファイルを置くと、いろいろなファイルが沢山あって、整理されていない印象を受けます。`$ZDOTDIR` を設定することで、多くのファイルをホームディレクトリから移動することができます。以下では、`.zsh*` を `zsh/` というディレクトリに管理する方法を説明します。

```bash
- zsh/
  |-- aliases/
	|-- git.sh
	|-- ...
	|-- python.sh
  |-- settings/
	|-- prompt.sh
	|-- zsh-extensions.sh
  |-- .zprofile
  |-- .zshrc
  |-- .zshenv
  |-- ...
  |-- .git
  |-- .gitignore
```

`ZDOTDIR` として `zsh/` を設定し、その中の `.zsh*` ファイルを読み込むようにします。

```bash
# .zshenv に以下のように設定
# Set zsh/ as ZDOTDIR
export ...
export ZDOTDIR="$HOME/path/to/zsh"
```

```bash
# zsh/ にある .zshenv を読み込むためのエイリアスをホームディレクトリに配置
~/.zshenv -> '/Users/$HOME/path/to/zsh/.zshenv'
```

## `.zshrc`

`.zshrc` 内のコンテンツも乱雑になりがちです。そのため、ファイルを分割して `.zshrc` でインポートするようにします。ここでは、`.zshrc` と同じ階層に `aliases` と `settings` というディレクトリを用意し、それらに読み込むべきファイルを配置します。

```bash
[[ -f $ZDOTDIR/settings/prompt.sh ]]  && . $ZDOTDIR/settings/prompt.sh
...
[[ -f $ZDOTDIR/aliases/git.sh ]]      && . $ZDOTDIR/aliases/git.sh
[[ -f $ZDOTDIR/aliases/python.sh ]]   && . $ZDOTDIR/aliases/python.sh
...
```

```{hint}
👉 ホームディレクトリ内の他のドットファイルも同様の方法で管理できます。
```


- [My zsh](https://github.com/kkensuke/dotfiles/zsh)