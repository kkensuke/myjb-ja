# VS Code での LaTeX 設定
> last update: {sub-ref}`today`

## TexLive のインストール (Mac)

`install-tl-unx.tar.gz` をダウンロード
```zsh
$ curl -OL http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
```

`install-tl-unx.tar.gz` を展開
```zsh
$ tar xvf install-tl-unx.tar.gz
```

インストーラーのディレクトリに移動
```zsh
$ cd install-tl-2*
```

TexLive をインストール
```zsh
$ sudo ./install-tl -no-gui -repository http://mirror.ctan.org/systems/texlive/tlnet/
```

インストールを開始するには、`I` を入力して Enter キーを押します。
```zsh
アクション:
 <I> ハードディスクへのインストールの開始
 <H> ヘルプ
 <Q> 終了
コマンドを入力してください: I
```

シンボリックリンクを `/usr/local/bin` に追加
```zsh
$ sudo /usr/local/texlive/????/bin/*/tlmgr path add
```

## VS Code の設定

1. [`LaTeX Workshop`](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) という拡張機能をインストールします。

2. VS Code で `settings.json` を開きます。
    Mac のターミナルで開く場合：
    ```bash
    code ~/Library/Application\ Support/Code/User/settings.json
    ```

3. 次のコードを `settings.json` に追加します。`ptex2pdf*3` と `ptex2pdf -> pbibtex -> ptex2pdf*2` の2つのレシピがあります。前者は `.tex` ファイルを `.bib` ファイルなしでコンパイルするためのもので、後者は `.bib` ファイルを含む `.tex` ファイル用です。詳細については、[このページ](https://github.com/James-Yu/LaTeX-Workshop/wiki/Compile#building-the-document)を参照してください。

    ```json
    {
        // 他の設定
        // ...
        
        // latex
        "latex-workshop.latex.tools": [
            {
                "name":"ptex2pdf",
                "command": "ptex2pdf",
                "args": [
                    "-l",
                    "-ot",
                    "-interaction=nonstopmode",
                    "-kanji=utf8 -synctex=1", // 日本語のためのオプション
                    "%DOC%"
                ]
            },
            {
                "name": "pbibtex",
                "command": "pbibtex",
                "args": [
                    "-kanji=utf8", // 日本語のためのオプション
                    "%DOCFILE%"
                ]
            }
        ],
        "latex-workshop.latex.recipes": [
            {
                "name": "ptex2pdf*3",
                "tools":[
                    "ptex2pdf",
                    "ptex2pdf",
                    "ptex2pdf",
                ]
            },
            {
                "name": "ptex2pdf -> pbibtex -> ptex2pdf*3",
                "tools":[
                    "ptex2pdf",
                    "pbibtex",
                    "ptex2pdf",
                    "ptex2pdf",
                ]
            },
        ],
        "latex-workshop.latex.clean.fileTypes":
        [
            "*.bbl", "*.blg", "*.idx", "*.ind", "*.lof", "*.lot", "*.out", "*.toc", "*.acn", "*.acr", "*.alg",
            "*.glg", "*.glo", "*.gls", "*.ist", "*.fls", "*.log", "*.fdb_latexmk", "*.synctex.gz",
            "_minted*", "*.nav", "*.snm", "*.vrb",
        ],
        "latex-workshop.latex.autoClean.run": "onBuilt",
        "latex-workshop.latex.autoBuild.run": "onFileChange",
        "latex-workshop.synctex.afterBuild.enabled": true,
        "latex-workshop.view.pdf.viewer": "tab",
    }
    ```

## $\LaTeX$ ファイルをコンパイルしよう！
テスト用の LaTeX ディレクトリを作成しましょう。[こちら](https://github.com/kkensuke/latex-template)から `article-template` をダウンロードしてください。そして、VS Code でディレクトリを開きます。`sections/intro.tex` を編集し、`cmd + S`（Mac）でコンパイルします。すると、変更された `main.pdf` が出力されます。

ディレクトリ構造は次の通りです：
```
article-template
|-- img/
|-- preamble.tex
|-- main.tex
|-- main.pdf
|-- ref.bib
`-- sections/
    |-- intro.tex
    |-- method.tex
    ...
    `-- appendix.tex
```

上記のように `main.tex` を複数のファイルに分割し、次のようにしてそれらを読み込ませることができます。
```latex
\begin{document}
\maketitle
...

\input{sections/intro.tex}
\input{sections/method.tex}
...
\newpage
\bibliographystyle{abbrv}
\bibliography{ref}
\newpage
\input{sections/appendix.tex}

\end{document}
```