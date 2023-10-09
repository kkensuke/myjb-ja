# LaTeX
> last update: {sub-ref}`today`

:::{admonition} $\LaTeX$
:class: important

$\LaTeX$ とは、文書作成のためのマークアップ言語です。$\LaTeX$ で作成された文書は、ソースファイルをコンパイルにより PDF に変換されます。$\LaTeX$ は、数式の記述に優れていて、論文やスライド、書籍などの作成に適しています。
:::

このセクションでは、VS Code での $\LaTeX$ の設定と、$\LaTeX$ の基本的な使い方について説明します。

::::{grid}
:gutter: 2

:::{grid-item-card}
:class-item: sd-font-weight-light sd-fs-5 sd-text-center
:columns: 6
:link: settings
:link-type: doc

VS Code での $\LaTeX$ 設定
:::

:::{grid-item-card}
:class-item: sd-font-weight-light sd-fs-5 sd-text-center
:columns: 6
:link: basics
:link-type: doc

$\LaTeX$ の基本
:::
::::

---

:::{admonition} Preamble
:class: note

プリアンブルとは、文書クラスを設定したり、パッケージを読み込んだり、コマンドを定義したり、ドキュメントのオプションを設定したりすることができる部分です。`\documentclass` と `\begin{document}` の間に置かれます。また、プリアンブルを別のファイルに置いて、`\input{preamble.tex}` で読み込むこともできます。
:::

`preamble.tex` 内では、パッケージを読み込んだり、コマンドを定義したり、ドキュメントのオプションを設定したりすることができます。

パッケージ同士やドキュメントクラス間の競合により、一部のパッケージを使用できないことがあります。そのため、文書クラスに応じてプリアンブル内の設定を変更する必要があります。

また、パッケージ同士の競合にも注意が必要です。一部のパッケージを同時に使用できない場合や、特定の順序で読み込む必要がある場合があります。

いくつかの文書クラスに対するプリアンブルの例を見てみましょう。

::::{grid}
:gutter: 2

:::{grid-item-card}
:class-item: sd-font-weight-light sd-fs-5 sd-text-center
:columns: 3
:link: article
:link-type: doc

article
:::

:::{grid-item-card}
:class-item: sd-font-weight-light sd-fs-5 sd-text-center
:columns: 3
:link: revtex4-2
:link-type: doc

revtex4-2
:::

:::{grid-item-card}
:class-item: sd-font-weight-light sd-fs-5 sd-text-center
:columns: 3
:link: beamer
:link-type: doc

beamer
:::

:::{grid-item-card}
:class-item: sd-font-weight-light sd-fs-5 sd-text-center
:columns: 3
:link: newcommands
:link-type: doc

\newcommands
:::
::::

これらのセクションに関連するすべてのファイルを[こちら](https://github.com/kkensuke/latex-template/tree/main)からダウンロードできます。