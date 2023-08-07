# GitHub

```{image} ./img/GitHub-flow.png
:name: flow
:width: 600px
:align: center
```

## Git (バージョン管理システム、VSC)
Gitは、開発者がソースコードの変更を管理し、ソフトウェア開発プロジェクトで共同作業するために使われる一般的なバージョン管理システムです。複数の人が同じプトジェクトのソースコードに対して別々に作業し、過去の変更を追跡することを可能にします。

Gitのローカルリポジトリは、開発者のコンピュータに保存されているプトジェクトのソースコードです。プトジェクトのソースコードに変更が加えられると、その変更はローカルで追跡され、開発者はその変更をローカルリポジトリにコミットすることができます。これによって開発者は、他の開発者が作業しているプトジェクトのソースコードに影響を与えることなく、新しいコードの変更を試したり、修正を加えたりすることができます。

一方、リモートリポジトリは、リモートサーバーに保存されているプトジェクトのソースコードです。開発者はローカルの変更をリモートリポジトリにプッシュして、チーム内の他の開発者と共有することができます。これにより、チーム全員がプトジェクトのソースコードに加えられた最新の変更を見ることができ、より効果的なコラボレーションが可能になります。

ローカルリポジトリとリモートリポジトリの主な違いは、ローカルリポジトリは開発者のコンピュータに保存されるのに対し、リモートリポジトリは複数の開発者がアクセスできるサーバーに保存されることです。ローカルリポジトリもリモートリポジトリも、Git のワークフローには欠かせないものです。なぜなら、開発者がそれぞれ独立してコード変更に取り組める一方で、チーム全員が最新の変更に対応できるようになるからです。

以下は、Git に関する主要な用語と概念です：

- リポジトリ： リポジトリとは、Gitによって追跡されるプロジェクト内のファイルやフォルダーの集まりのことです。ローカルコンピューターとリモートサーバー（GitHubなど）にあります。
- クローン： リポジトリをクローンするとは、自分のコンピューターにリポジトリのローカルコピーを作成することです。
- 追加： Git リポジトリにファイルを追加すると、そのファイルに対する変更の追跡を開始するよう Git に指示することになります。
- コミット： コミットとは、リポジトリのファイルに加えた変更のスナップショットのことです。変更をコミットすると、その変更の永続的な記録が作成されます。
- プッシュします： 変更をプッシュするとは、コミットした変更をリモートリポジトリに送信することです。これにより、同じリポジトリで作業している他のチームメンバーも、あなたの変更を見ることができるようになります。
- プル: プルとは、リモートリポジトリから変更を取得し、その変更でローカルリポジトリを更新することです。これにより、ローカルリポジトリが他のチームメンバーによる最新の変更に対応するようにします。
- ブランチ： ブランチとは、メインのプトジェクトのソースコードとは独立した開発ラインで、メインのプトジェクトのソースコードに影響を与えずに新機能を試したいときに使用します。
- マージ： マージとは、あるブランチからの変更を別のブランチにまとめることです。これは通常、ある機能が完成してメインのプトジェクトのソースコードに統合する準備ができたときに行います。

これらは、Gitで使われる最も一般的な用語や概念のほんの一部です。Gitを学ぶには時間がかかりますが、チームで働く開発者にとっては重要なスキルです。


## 基本コマンド
### 新しいリポジトリの作成
まず、[GitHubのウェブサイト](https://github.com/)で初期化せずに新しいリポジトリを作成します。
次に、ローカルコンピュータ上で以下のコマンドを実行します。

```bash
[mkdir プロジェクト名]
[cd プロジェクト名]

echo "# test" >> README.md

# リポジトリを初期化
git init

# 現在のディレクトリ内のすべてのファイルをワーキングツリーに追加
git add .

# 変更をローカルリポジトリにコミット
git commit -m "最初のコミット"

git branch -M main
git remote add origin https://github.com/<ユーザー名>/<リポジトリ>.git

# 変更をリモートリポジトリにプッシュ
git push -u origin main
```

```{note}
`git init` は、カレントディレクトリにリポジトリ（または `.git` ディレクトリ）を作成します。\
`git init プロジェクト名` は、プロジェクト名という名前のディレクトリを作成し、その中に `.git` を作成します。
```

### コマンドラインから既存のリポジトリをプッシュ
すでにローカルリポジトリを作成（または初期化）している場合、次のコマンドを使用してリモートリポジトリにリンクするだけで済みます。

```bash
git remote add origin https://github.com/<ユーザー名>/<リポジトリ>.git
git branch -M main
git push -u origin main
```

```{tip}
GitHub CLIを使用すると、リポジトリをより簡単に作成できます：[GitHub CLIで新しいリポジトリを作成する](github-cli)
```

### クローン
任意のディレクトリで次のコマンドを実行します。

```bash
$ git clone [ブランチ（mainの場合は省略することも可能）] https://github.com/<ユーザー名>/<リポジトリ>.git
$ cd <リポジトリ>
```


### リモートリポジトリの新しい変更をローカルリポジトリに取り込む
```bash
$ git pull origin main
```

````{tip}
これは以下のコマンドと同等です。
```bash
$ git fetch
$ git merge origin main
```
````

### ブランチの作成とローカルでのブランチの変更

リポジトリを作成すると、最初に main ブランチしか存在しません。
したがって、デフォルトで main ブランチにいます。

現在のブランチを確認するには、次のコマンドを使用できます。

```bash
$ git branch
```

リモートブランチを含むすべてのブランチを確認するには、次のコマンドを使用できます。

```bash
$ git branch -a
```

1. ローカルで新しいブランチを作成（リモートには存在しないブランチ）

新しいブランチを作成してみましょう！

```bash
# ブランチを作成
$ git branch <ブランチ名>
# main ブランチから <ブランチ名> に切り替え
$ git checkout <ブランチ名>
```

````{tip}
これらの2つのコマンドは次のようにまとめて実行できます。
```bash
$ git checkout -b <ブランチ名>
```
````

次に、新しいブランチをリモートリポジトリに反映します。

```bash
$ git push origin <ブランチ名>
```

2. すでにリモート/ブランチが存在する場合
```bash
# リモートブランチを指す新しいローカルブランチを作成
$ git branch <ブランチ名> origin/<ブランチ名>
# そのブランチに切り替え
$ git checkout <ブランチ名>
```

````{tip}
これらの2つのコマンドは次のようにまとめて実行できます。
```bash
$ git checkout -b <ブランチ名> origin/<ブランチ名>
```
````




### .gitignore

GitHubで追跡したくないファイルを無視するようにGitを設定することができます。
`.git` と同じディレクトリにある `.gitignore` にファイル名を書くだけです。

ただし、Gitのコントロール下にある各ディレクトリに `.gitignore` を毎回作成し、そこにファイル名を書き込むことは面倒です。[gitignore.io ウェブサイト](https://www.toptal.com/developers/gitignore/api/)または [gitignore.io CLI](https://docs.gitignore.io) を使用して `.gitignore` を簡単に作成できます。

一部のファイルに関しては、毎回 `.gitignore` にファイル名を追加することになるかもしれません。`~/.gitignore_global` を作成すれば、すべてのリポジトリにおいて、そこに書かれたファイルの変更を無視できます。

まず、[こちら](https://docs.gitignore.io/install/command-line)から .gitignore.io をインストールします。

macOS と zsh の場合：
- 以下のコマンドを1度だけ実行します
	```bash
	$ git config --global core.excludesfile ~/.gitignore_global;
	echo "function gi() { curl -sLw \"\\\n\" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
	```
- `~/.gitignore_global` を作成します
	```bash
	$ gi macos,python,visualstudiocode > ~/.gitignore_global
	```
詳細については、[Ignoring files](https://docs.github.com/ja/get-started/getting-started-with-git/ignoring-files)を参照してください。


### リポジトリの名前を変更したい場合
- まず、GitHubのウェブサイトでリポジトリの名前を変更します。
- 次に、対応する [.git/ -> config] ファイルを開き、[url = https://~.<ここに変更した名前>.git] とします。


### Gitの管理を終了する

`.git` ディレクトリを削除するだけです。


### ファイルの削除
1. リポジトリとローカルディレクトリからファイルを削除
2. リポジトリだけからファイルを削除

```bash
$ git rm ファイル名 #1
$ git rm --cached ファイル名 #2
$ git commit -m "削除"; git push origin main
```


### 他のユーザーをプライベートリポジトリに招待する
- GitHubのウェブサイトで、リポジトリの設定を開きます。
- 左のメニューから「Collaborators」を選択します。
- 「Manage access」にある「Add people」をクリックします。
- 招待したいユーザーのユーザー名を入力します。


(github-cli)=
## GitHub CLI
### インストール
```bash
$ brew install gh
```

### 現在のディレクトリをベースに新しいリポジトリを作成
```bash
$ git init; git add .
$ git commit -m "Initial commit"
$ gh repo create --private --source=. --push
```

以下のように `~/.zshrc` にエイリアスを定義することもできます。
```bash
# 現在のディレクトリをベースに新しいリポジトリを作成
# $1 = private または public
ginit() {
	git init
	git add .
	git commit -m "🎉 Initial commit"
	gh repo create --"$1" --source=. --push
}
```

### リモートリポジトリを削除するためのエイリアスを作成
- 登録
	```bash
	$ gh alias set repo-delete 'api -X DELETE repos/$1'
	$ gh auth refresh -h github.com -s delete_repo
	```
- 使用方法（注意: 確認なし！）
	```bash
	$ gh repo-delete ユーザー名/リポジトリ名
	```
- 登録さたエイリアスの確認
	```bash
	$ gh alias list
	```


## 参考
- [What is Git?](https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F)
- [Bitbucket](https://www.atlassian.com/git/tutorials)
