# LaTeX
> last modified: {sub-ref}`today`

## [VS Code での $\LaTeX$ 設定](./settings.md)

## [LaTeXの基本](./basics.md)

## プリアンブル

`preamble.tex` 内では、パッケージを読み込んだり、コマンドを定義したり、ドキュメントのオプションを設定したりすることができます。

パッケージ同士やドキュメントクラス間の競合により、一部のパッケージを使用できないことがあります。そのため、文書クラスに応じてプリアンブル内の設定を変更する必要があります。

また、パッケージ同士の競合にも注意が必要です。一部のパッケージを同時に使用できない場合や、特定の順序で読み込む必要がある場合があります。

いくつかの文書クラスに対するプリアンブルの例を見てみましょう。

- [article](./article.md)
- [revtex4-2](./revtex4-2.md)
- [beamer](./beamer.md)
- [\newcommands](./newcommands.md)

これらのセクションに関連するすべてのファイルを[こちら](https://github.com/kkensuke/latex-template/tree/main)からダウンロードできます。