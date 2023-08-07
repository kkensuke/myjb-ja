# $PATH

パス (path) は通常、ディレクトリツリー内のファイル/ディレクトリの位置を識別するための文字列を示します。
PATH は環境変数の1つであり、上記で説明したパスとは少し異なります。

シェルでコマンドを入力すると、シェルはそのコマンドを見つけて実行する必要があります。PATH は、入力したコマンドをシェルが検索すべき場所を指定します。

PATH を確認するには、次のコマンドを実行します：
```bash
echo $PATH
# /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
```
これは、PATH がいくつかのディレクトリを保持していることを示しています（コロンがセパレータ）：`/usr/local/bin`、`/usr/bin`、`/bin`、`/usr/sbin`、`/sbin`

```{tip}
すべての環境変数を `printenv` で表示できます。
```

コマンドを入力すると、シェルはまず最初に `/usr/local/bin` を検索します。シェルがコマンドを見つけたら、コマンドを実行します。見つからない場合は、次に `/usr/bin` を検索します。コマンドを見つけたら実行します。見つからない場合は、`/bin` を検索します。この流れはコマンドが見つかるまで繰り返されます。そして、最初に見つかったコマンドだけが実行されます。PATHのすべてのディレクトリでコマンドを見つけられなかった場合、シェルは `zsh: command not found: xxx` と返します。

コマンド `which` は以下でコマンド `ls` が存在するディレクトリを表示します。
```bash
which ls
# /bin/ls
```

## コマンドの検索パスを追加する

次のコードを `~/.zshrc` または `~/.bashrc` に置いて、PATH にディレクトリを追加します。
```bash
export PATH=$PATH:<コマンドの検索パス>
（または export PATH=<コマンドの検索パス>:$PATH）
```

そして変更を保存します。
```bash
source ~/.zshrc
source ~/.bashrc
```

## 環境変数

```bash
% printenv
...
SHELL=/bin/zsh
HOME=/Users/asdf
USER=asdf
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PWD=/Users/asdf
...
```

### 新しい環境変数を作成する
```bash
export US=/usr/sbin
echo $US
# /usr/sbin
```

以下の各コマンドは同じ結果を表示します
```bash
ls /usr/sbin
ls $US
```

### 環境変数を削除する
```bash
unset US
```
