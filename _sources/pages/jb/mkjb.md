# Jupyter Book の作成
> last modified: {sub-ref}`today`

> [Jupyter Book](https://jupyterbook.org/en/stable/intro.html) とは、さまざまな形式のドキュメント（HTML, PDF, ePUB など）を作成する Sphinx というツールと、MyST Markdown というサイエンスのドキュメントに適したマークダウンを融合させたツールです。Jupyter Book は、ドキュメント、研究、教育資料などを公開するために、Jupyter エコシステムで広く使われています。

このページでは、Jupyter Book をゼロから作成してみます！

## Jupyter Book を作成する

### ディレクトリを作成する
最初に、以下のディレクトリ構造を作成し、venv（仮想環境）をアクティベートします。

```bash
./jupyter-book
	└── test-book
	    ├── venv
```

```bash
$ mkdir -p ./jupyter-book/test-book
$ cd ./jupyter-book/test-book

$ python3 -m venv venv
$ source venv/bin/activate
```

どのPythonが実行されているかを確認します：
```bash
(venv)$ which python
```
出力から venv 内の Python が使用されていることがわかります。


````{note}
必要に応じてpipを更新する必要がある場合があります。その場合は、次のコマンドを使用します（`<Username>`をご自分のユーザー名に置き換えてください）。\
pipを更新する：
```bash
(venv)$ /Users/<Username>/jupyter-book/test-book/venv/bin/python3 -m pip install --upgrade pip
```
````


### jupyter-book パッケージをインストールする
```bash
(venv)$ pip install -U jupyter-book
```

### 新しい Jupyter Book を作成する。
```bash
./jupyter-book
	└── test-book
	    ├── venv
	    └── test-book
                ├── _condig.yml
                ├── _toc.yml
                ├── ...
```

```bash
(venv)$ jb create test-book
(venv)$ cd test-book
(venv)$ jb build .
(venv)$ open /Applications/Safari.app _build/html/index.html
```

```{note}
jb は jupyter-book の略です。
```

無事、ビルドが完了すると、terminal に次のような HTML のファイル URL: `file:///Users/<Username>/path/to/jupyterbook/test-book/test-book/_build/html/index.html`` が出力されるので、それをブラウザに貼り付けて、確認してみてください。


## 公開する
まず、GitHubのウェブサイト上で `test-book` という名前のリポジトリを初期化せずに作成します。
次に、ローカルコンピュータ上の `test-book` ディレクトリで以下のコマンドを実行します。
```bash
(venv)$ echo "# test-book" >> README.md
(venv)$ git init
(venv)$ git add .
(venv)$ git commit -m "first commit"
(venv)$ git branch -M main
(venv)$ git remote add origin https://github.com/<Username>/test-book.git
(venv)$ git push -u origin main
```

```bash
(venv)$ pip install ghp-import
(venv)$ ghp-import -n -p -f _build/html
```

公開されたウェブサイトは `https://<Username>.github.io/test-book/intro.html` で確認できます。サイトが公開されるまでに数分かかる場合があります。


## 更新する
ソースコードを変更した後は、以下のコマンドでウェブサイトを更新できます。

```bash
(venv)$ cd test-book
(venv)$ jb build --all .

(venv)$ git add .
(venv)$ git commit -m "comment"
(venv)$ git push origin main

(venv)$ ghp-import -n -p -f _build/html
```


## 他の jb の作成方法
### インタラクティブなプロンプトからより完全な本を作成する方法

Jupyter Book は、インタラクティブなプロンプトを使用して本のディレクトリ構造を作成するための Jupyter Book cookiecutter も提供しています。
```
jupyter-book create mynewbook/ --cookiecutter
```
https://github.com/executablebooks/cookiecutter-jupyter-book

### 目次から本のファイルを作成する方法
単一の構造から空のファイルを迅速に生成し、それを自分でコンテンツで埋めるために、`_toc.yml` ファイルを使用して本の骨組みを自動的に作成することも可能です。
```
jupyter-book toc to-project path/to/_toc.yml
```