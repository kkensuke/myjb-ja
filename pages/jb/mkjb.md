# Jupyter Bookの作成

Jupyter Book をゼロから作成してみましょう。

```zsh
~/jupyter-book
	└── test-book
	    ├── venv
	    └── test-book
```

## Jupyter Book を作成する

### ディレクトリを作成する
最初に、以下のディレクトリ構造を作成し、venv（仮想環境）をアクティベートします。
```zsh
$ mkdir -p ~/jupyter-book/test-book
$ cd ~/jupyter-book/test-book

$ python3 -m venv venv
$ source venv/bin/activate
```

どのPythonが実行されているかを確認します：
```zsh
$ which python
```
出力から venv 内の Python が使用されていることがわかります。

必要に応じてpipを更新する必要がある場合があります。その場合は、次のコマンドを使用します（`<Username>`をご自分のユーザー名に置き換えてください）。\
pipを更新する：
```zsh
$ /Users/<Username>/jupyter-book/test-book/venv/bin/python3 -m pip install --upgrade pip
```

### jupyter-bookパッケージをインストールする
```zsh
(venv)$ pip install -U jupyter-book
```

### 新しいJupyter Bookを作成する。
```zsh
$ jb create test-book
$ cd test-book
$ jb build .
$ open /Applications/Safari.app _build/html/index.html
```
（jbはjupyter-bookの略）


## 公開する
まず、GitHubのウェブサイト上で `test-book` という名前のリポジトリを初期化せずに作成します。
次に、ローカルコンピュータ上の `test-book` ディレクトリで以下のコマンドを実行します。
```zsh
echo "# test-book" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/<Username>/test-book.git
git push -u origin main
```

```zsh
$ pip install ghp-import
$ ghp-import -n -p -f _build/html
```

公開されたウェブサイトは `https://\<Username\>.github.io/test-book/intro.html` で確認できます。サイトが公開されるまでに数分かかる場合があります。


## 更新する
ソースコードを変更した後、以下のコマンドでウェブサイトを更新できます。

```zsh
$ cd test-book
$ jb build --all .
$ git add .
$ git commit -m "コメント"
$ git push origin main
```

GitHub Pagesを更新する
```zsh
$ ghp-import -n -p -f _build/html
```


## 他のjbの作成方法
### インタラクティブなプロンプトからより完全な本を作成する方法

Jupyter Bookは、インタラクティブなプロンプトを使用して本のディレクトリ構造を作成するためのJupyter Book cookiecutter も提供しています。
```
jupyter-book create mynewbook/ --cookiecutter
```
https://github.com/executablebooks/cookiecutter-jupyter-book

### 目次から本のファイルを作成する方法
単一の構造から空のファイルを迅速に生成し、それを自分でコンテンツで埋めるために、_toc.ymlファイルを使用して本の骨組みを自動的に作成することも可能です。
```
jupyter-book toc to-project path/to/_toc.yml
```