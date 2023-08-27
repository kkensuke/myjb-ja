# コマンドライン
> last modified: {sub-ref}`today`

ここでは、コマンドラインについて学びます。コマンドラインはコンピュータへのテキストインターフェースです。テキストコマンドを入力して、ファイルの作成や削除、ファイルの権限の変更などの操作を行うことができます。

Macでは、`terminal.app` でコマンドラインを使用できます。

## 基本

まず、ショートカットを確認します。

| コマンド | 説明 |
|  :---:  |:---:|
|Ctrl + C| 現在のプロセスを中断します|
|Ctrl + Z| 現在のプロセスを一時停止します|
|Ctrl + S| コマンドの出力を一時停止します|
|Ctrl + Q| Ctrl + S によって一時停止した出力を再開します|
|Ctrl + L| 画面をクリアします|
|Ctrl + D| シェルを終了します|
|Ctrl + A| カーソルを行の先頭に移動します|
|Ctrl + E| カーソルを行の末尾に移動します|
|Ctrl + W| カーソルの前にある単語を切り取ります|
|Ctrl + U| カーソルの前にある行の一部を切り取ります|
|Ctrl + K| カーソルの後にある行の一部を切り取ります|
|Ctrl + Y| 最後に切り取った内容を貼り付けます|

---
### 特殊な記号

以下は4つの特殊な記号で、それぞれ特定のディレクトリを表します。

|記号|意味|
|:----:|:-----:|
|`/`|ルートディレクトリ|
|`.`|カレントディレクトリ|
|`..`|親ディレクトリ|
|`~`|ホームディレクトリ|

### 基本的なコマンド

`pwd`: 現在のディレクトリを表示します

`mkdir`: ディレクトリを作成します
```bash
mkdir ~/tmp
```

`cd`: ディレクトリを変更します
```bash
cd ~/tmp
```

`touch`: ファイルを作成します
```bash
touch file
```

`ls`: ファイルやディレクトリを一覧表示します
```bash
ls
# file
```

`mkdir -p`: 必要な子ディレクトリも作成します
```bash
mkdir -p dir/subdir/ssubdir
ls
# file dir
```

`rm`: ファイルを削除します\
`rm -r`: ディレクトリとその内容を削除します
```bash
rm file
rm -r dir
```

参考：
```bash
rm -v file # 削除時にファイル名を表示
rm -i file # 削除の確認
rm -f file # 強制的に削除
```

`rmdir`: 空のディレクトリを削除します
```bash
mkdir dir
ls
# dir
rmdir dir
ls
# (何も表示されない)
```

参考：
```bash
mkdir -p dir/subdir/ssubdir

rmdir -p dir/subdir/ssubdir
```


`echo`:
- 文字列を表示します
    ```bash
    echo $PATH
    ```
- ファイルを作成し、内容を指定します
    - 新しいファイルを作成または既存のファイルを上書きする： `>`
        ```bash
        echo [文字列] > [ファイル名]
        ```
    - 追記する： `>>`
        ```bash
        echo [文字列] >> [ファイル名]
        ```

`cat`: ファイルの内容を表示します
```bash
echo hello > file1
cat file1
# hello
```

```bash
cat > file2
asdf  (何か入力)
Ctrl + D (入力終了)
cat file2
# asdf
```

`cp`: ファイルやディレクトリをコピーします
```bash
cp file1 file3
cat file3
# hello
```

```bash
mkdir dir1
touch dir1/file4
cp -r dir1 dir2
ls dir2
# file4
```

```{note}
`cp file1 file2` として `file2` が既に存在する場合、`file2` の内容を上書きするかどうかを確認されます。

`file2` が存在しない場合、`file1` の内容が `file2` にコピーされます。

`cp -r dir1 dir2` として `dir2` が既に存在する場合、`dir1` が `dir2` 内に作成されます。

`dir2` が存在しない場合、`dir1` の内容が `dir2` にコピーされます。つまり、これらのディレクトリの内容は同じです。
```

`mv`: ファイルやディレクトリを移動します。`file5` が存在しない場合、以下の操作は名前の変更になります。
```bash
mv file1 file5
```

`file5` は `dir3` に移動します。
```bash
mkdir dir3
mv file5 dir3
```

`dir4` が存在しない場合、以下の操作は名前の変更です。そうでなければ、`dir1` は `dir4` の中に移動します。
```bash
mv dir1 dir4
```


`tree`: 現在のディレクトリの内容をツリーのような形式で表示します。`tree -d` を使用してディレクトリの内容も表示できます。`tree -L` を使用して特定の階層までディレクトリの内容を表示できます。

まず、bashで `tree` コマンドをインストールする必要があります。
```bash
brew install tree
```

```bash
tree
test
├── dir2
│   └── file4
├── dir3
│   └── file5
├── dir4
│   └── file4
├── file2
└── file3
```

```bash
# 2階層までのディレクトリの内容を表示
tree -L 2
```

`chmod`: ファイルのモード（権限）を変更します
```bash
chmod 755 file
```

**8進数の数字でモードを指定できます。**

8は「読み取り」を意味します\
2は「書き込み」を意味します\
1は「実行」を意味します\
0は「権限なし」を意味します

すべての操作（4+2+1）をすべてのユーザーに許可する場合、例えば `777` を使用できます。所有者にすべての操作（4+2+1）、グループとその他に読み取りと実行（4+1）を許可する場合、例えば `755` を使用できます。

**記号を使用してモードを指定することもできます。たとえば、ユーザーに対して `u+x`、グループに対して `g+x`、その他に対して `o+x` のように使用します。**

|対象|意味|操作|意味|モード|意味|
|:-:|:---:|:-:|:------------:|:-:|:----:|
|u|	ユーザー  |=| モードの設定  |r| 読み取り   |
|g| グループ |+| モードの追加   |w| 書き込み  |
|o| その他|-| モードの削除|x| 実行|
|a|	全て   | |                | |        |


例えば、
```bash
chmod u=rwx,g=rx,o=r file

chmod u+x file
```

`chmod -R` を使用して権限を再帰的に変更することもできます。

---
### シェルのグロブパターン

`グロブパターン` は、ワイルドカード文字を使用してファイル名のセットを指定するものです。 `グロブパターン` は、特定のパターンに一致するファイルを検索する強力な方法です。たとえば、 `*.txt` はカレントディレクトリ内の拡張子が `.txt` のすべてのファイルを意味します。

いくつかの一般的なワイルドカード文字：
```
* : 0文字以上の任意の文字に一致
? : 任意の1文字に一致
[abc] : セット内の任意の文字に一致
[a-z] : 範囲内の任意の文字に一致
[!abc] : セット内の任意の文字以外に一致
[!a-z] : 範囲内の任意の文字以外に一致
```

**拡張パターン一致**

- *(pattern)    0回以上繰り返す
- ?(pattern)    0回または1回繰り返す
- @(pattern)   1回だけ繰り返す
- +(pattern)    1回以上繰り返す
- !(pattern)     パターンに一致しない

```bash
ls
# file1 file2 file3 file4 file11 file123
ls !(file1)
# file2 file3 file4 file11 file123
ls !(file1|file2)
# file3  file4 file11 file123
ls file[0-9]
# file1 file2 file3 file4
ls file[0-9]+([0-9])
# file11 file123
```


`find`: ファイルやディレクトリを検索します
```bash
# 現在のディレクトリで filename を検索（再帰的ではない）
find filename

# target ディレクトリ内で lecture0～lecture9 ディレクトリを再帰的に検索します（-type f 参照）
find target -name lecture[0-9] -type d

# 現在のディレクトリ内で1日以内にアクセスされたファイルを再帰的に検索します
find . -atime -1

# 現在のディレクトリ内で1日以内に変更されたファイルを再帰的に検索します
find . -mtime -1

# 現在のディレクトリ内でサイズが30kBから1MBのファイルを再帰的に検索します（*.py ファイル参照）
find . -size +30k -size -1M -name '*.py'

# target ディレクトリ内で条件1と条件2に一致するファイルやディレクトリを再帰的に検索します（-or、-not オプション参照）
find target condtion1 -and condition2

# 現在のディレクトリ内で .txt ファイルを検索し、すべて削除します。
find . -name '*.txt' -exec rm {} +
```

`grep`: パターンに一致するファイルを検索します
```bash
# ファイル内で 'word' を含む行を検索
grep [-オプション] 'word' ファイル名

grep 'word' file1 file2 file3
grep 'string1 string2'  filename
```

| オプション | 説明 |
|:--------:|:-----:|
|-i | 大文字と小文字を区別しない|
|-w | 単語として一致するようにする|
|-v | 一致しない行を選択|
|-n | 出力行に行番号を表示|
|-h | 出力行の Unix ファイル名の接頭辞を抑制|
|-H | 出力行にファイル名を表示|
|-r | ディレクトリを再帰的に検索|
|-R | -r と同じですが、すべてのシンボリックリンクをたどる|
|-l | 一致するファイルの名前のみ表示
|-L | 一致しないファイルの名前のみ表示|
|-c | ファイルごとに選択された行数だけカウントを表示|
|--color | 一致するパターンを色で表示|
|-m NUMBER | NUMBER の選択された行で grep コマンドを停止|
|-o | 行の一致部分のみ表示|

### ブレース展開
ブレース展開を使用して任意の文字列を生成できます。
```bash
echo a{d,c,b}e
ade ace abe

echo {1,2}{3,4}
13 14 23 24
```

いくつかの例：
```bash
# すべてのファイルとディレクトリを `dir` に移動
mv * dir

mv ./path/{foo,bar,baz}.txt dir
# = mv ./path/foo.txt ./path/bar.txt ./path/baz.txt `dir`

# すべての pyhon と shell ファイルを `dir` に移動
mv *{.py,.sh} dir
```

---
### パイプラインとリダイレクト
```
`|`: パイプ
`>`: リダイレクト
```

Unixライクなシステムでは、3つのタイプのストリームがあり、コンピュータプログラムとその環境を接続します。標準入力 (`stdin`)、標準出力 (`stdout`)、標準エラー (`stderr`) です。入力ストリームはユーザーからデータを受け取るストリームです。出力ストリームはユーザーにデータを送信するストリームです。エラーストリームはユーザーにエラーメッセージを送信するストリームです。`パイプ` と `リダイレクト` は、1つのコマンドの出力を別のコマンドの入力に接続するために使用されます。

**パイプライン**

`|` stdout を stdin に送ります。2番目のコマンドは、前のコマンドの stdout を stdin として受け取ります。

```bash
history | head
```

**リダイレクト**

``>` stdout をファイルに送ります

```bash
history > hist.txt
cat hist.txt | head
```

`>>` コンテンツを追加

```bash
echo asdf > test.txt
cat test.txt
# asdf

echo fdsa >> test.txt
cat test.txt
# asdf
# fdsa
```


stderr を表示させないためには、コマンドの最後に `2>/dev/null` を追加します。

---
### コマンドの結合

%`;` `&` `&&` `||` `$()` `xargs`

- `command2` を `commmand1` の後に実行

    `command2` は `command1` が stderr を出力した場合でも実行されます。
    ```bash
    command1 ; command2
    ```

- `command2` と `commmand1` を同時に実行

    ```bash
    command1 & command2
    ```

- `command1` が成功した後に `command2` を実行

    ```bash
    command1 && command2
    ```

- `command1` が失敗した後に `command2` を実行

    ```bash
    command1 || command2
    ```

**他の stdout を使用するコマンド** `$()`

```bash
date +%Y%D
touch file_`date +%Y%D`
# touch file_$(date +%Y%D)

# ネストされたコマンド
dirname $(which cat)
ls $(dirname $(which cat))
```


---
### シンボリックリンク
`ln file1 file2`: `file1` のハードリンク `file2` を作成します
`ln -s file1 file2`: `file1` のシンボリックリンク `file2` を作成します。

シンボリックリンクは、別のファイルやディレクトリへの参照するためのファイルです。シンボリックリンクは、元のファイルが削除されてもリンクが残り、元のファイルへのポインタが壊れてしまうことがあります。

一方、ハードリンクは、同じ inode に紐付いている別のファイルエントリです。したがって、ハードリンクは元のファイルと同じデータを共有し、元のファイルとリンクファイルの間には区別がありません。したがって、元のファイルを削除しても、ハードリンクが残り、データは保持されます。ただし、ハードリンクは同じファイルシステム内でのみ機能します。

例：
```bash
ln -s original_file link_file
ls -l
# lrwxr-xr-x  1 user  group  12 Aug  4 15:18 link_file -> original_file
```

```{tip}
`-f` オプションを使用すると、既存のファイルを強制的に上書きすることができます。
```

```{note}
エイリアスはシンボリックリンクに似ていますが、オリジナルのファイルを移動した後も有効です。シンボリックリンクと比べてエイリアスの方が便利に思えますが、エイリアスは Unix システムと互換性がありません。`cd alias` のようには使えませんが、`cd syslink` のように使うことはできます。
```