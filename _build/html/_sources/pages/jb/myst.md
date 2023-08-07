---
myst:
  substitutions:
    key1: "I'm a **substitution**"
    key2: |
      ```{note}
      {{ key1 }}
      ```
    image: |
      ```{image} ../basic/github/img/GitHub-flow.png
      :alt: image
      :width: 200px
      ```
---

# MyST

以下では、MyST Markdownの基本的な使用方法を列挙します。MySTは、科学技術文書向けの Markdown の派生版の一つです。

>## 見出し
>```
># 見出しレベル 1
>## 見出しレベル 2
>### 見出しレベル 3
>#### 見出しレベル 4
>##### 見出しレベル 5
>###### 見出しレベル 6
>```
>>
>># 見出しレベル 1
>>## 見出しレベル 2
>>### 見出しレベル 3
>>#### 見出しレベル 4
>>##### 見出しレベル 5
>>###### 見出しレベル 6
>>


## ターゲット見出し
>```
>(target)=
>### target
>...
>[targetを見る](target)
>```
(target)=
### target
...
[targetを見る](target)

## 引用
>```
>> これは引用です
>```
>>これは引用です


## 行末記号
>```
>これはテキストの終わりです。
>---
>```
>>これはテキストの終わりです。
>>---

## 行コメント
>```
>% これは行コメントです。
>```
>>% これは行コメントです。
## ブロックの区切り
>```
>これはブロックの例です
>+++ {"meta": "data"}
>ブロックの区切り
>```
>>これはブロックの例です
>>+++ {"meta": "data"}
>>ブロックの区切り

## リスト
>```
>1. 最初の項目
>2. 2番目の項目
>    * 最初のサブ項目
>    * 2番目のサブ項目
>      * 3番目のサブサブ項目
>```
>>1. 最初の項目
>>2. 2番目の項目
>>    * 最初のサブ項目
>>    * 2番目のサブ項目
>>      * 3番目のサブサブ項目

## テーブル
>````
>```{list-table} このテーブルのタイトル
>:header-rows: 1
>:name: example-table
>
>* - 訓練
>  - 検証
>* - 0
>  - 5
>* - 13720
>  - 2744
>```
>````
>
```{list-table} このテーブルのタイトル
:header-rows: 1
:name: example-table

* - 訓練
  - 検証
* - 0
  - 5
* - 13720
  - 2744
```


## 注意書き
>````
>```{admonition} これはタイトルです
>タイトル付きの注意書きの例です。
>```
>````
>```{admonition} これはタイトルです
>タイトル付きの注意書きの例です。
>```

>````
>```{note} ノートは**引数なし**で必要です。
>だからここから内容が始まります。
>```
>````
>```{note} ノートは**引数なし**で必要です。
>だからここから内容が始まります。
>```

>````
>```{warning}
>警告
>```
>````
>```{warning}
>警告
>```

>````
>```{tip}
>ヒント
>```
>````
>```{tip}
>ヒント
>```

>````
>```{caution}
>注意
>```
>````
>```{caution}
>注意
>```

>````
>```{attention}
>注意
>```
>````
>```{attention}
>注意
>```

>````
>```{danger}
>危険
>```
>````
>```{danger}
>危険
>```

>````
>```{error}
>エラー
>```
>````
>```{error}
>エラー
>```

>````
>```{hint}
>ヒント
>```
>````
>```{hint}
>ヒント
>```


>````
>```{important}
>重要
>```
>````
>```{important}
>重要
>```

>````
>```{seealso}
>関連項目
>```
>````
>```{seealso}
>関連項目
>```

>```
>{fa}`check, text-success mr-1` これはロールの例（チェックマークと成功の色）です。
>```
>>{fa}`check, text-success mr-1` これはロールの例（チェックマークと成功の色）です。

>```
>{fa}`check, text-info mr-1` これはロールの例（チェックマークと情報の色）です。
>```
>>{fa}`check, text-info mr-1` これはロールの例（チェックマークと情報の色）です。


### 図のパラメータ

次のオプションがサポートされています：

`scale` : 整数パーセンテージ
: 図を均一にスケーリングします。デフォルトは「100」で、スケーリングは行われません。記号「%」は省略可能です。

`width` : 長さまたはパーセンテージ
: 図の幅を次の単位で設定できます：「em」、「ex」、「px」、「in」、「cm」、「mm」、「pt」、「pc」、「%」。

`height` : 長さ
: 図の高さを

次の単位で設定できます：「em」、「ex」、「px」、「in」、「cm」、「mm」、「pt」、「pc」。

`alt` : テキスト
: 図が表示されない場合や読者が補助技術を使用している場合に表示されるテキスト。通常、図の簡単な説明を記述します。

`align` : 「left」、「center」、または「right」
: 図を左寄せ、中央揃え、または右寄せに配置します。デフォルトの配置は中央揃えです。

`name` : テキスト
: 図の固有の識別子で、{ref}や{numref}ロールで参照するために使用できます。スペースや特殊文字を含めることはできません。

`figclass` : テキスト
: 図のclass属性の値を設定します。これにより、カスタムCSSやJavaScriptを追加できます。事前定義されたオプションには次のものがあります：

## 数式
>```
>これはインラインの数式です $z=\sqrt{x^2+y^2}$。
>```
>>これはインラインの数式です $z=\sqrt{x^2+y^2}$。

>```
>$$
>z=\sqrt{x^2+y^2}
>$$ (mylabel)
>式の参照: {eq}`mylabel`
>```
>>$$z=\sqrt{x^2+y^2}$$ (mylabel)
>>式の参照: {eq}`mylabel`


<!-- 
## 実行可能なコード

```{code-cell} ipython3
note = "Python syntax highlighting"
print(note)
```
-->


## 参考文献

>```
>{doc}`../basic/alias`を参照してください。
>```
>>>{doc}`../basic/alias`を参照してください。

## トグル
>`````
>````{toggle}
>```python
>print('こんにちは')
>```
>````
>`````
>>````{toggle}
>>```python
>>print('こんにちは')
>>```
>>````

## マージン
>````
>```{margin} **マージンタイトル**
>ここにマージンコンテンツがあります、かなりクールです！
>```
>````
>>```{margin} **マージンタイトル**
>>ここにマージンコンテンツがあります、かなりクールです！
>>```
>---

>```
>:::{tip}
>:class: margin toggle
>このノートはマージンに表示されます！
>:::
>```
>>:::{tip}
>>:class: margin toggle
>>このノートはマージンに表示されます！
>>:::
---

% :class: toggle = :class: dropdown?

>````
>``{figure} ./gitHub/img/GitHub-flow.png
>---
>figclass: margin
>alt: My figure text
>name: myfig4
>---
>そして、ここが図のキャプションです
>```
>````
>>```{figure} ../basic/github/img/GitHub-flow.png
>>---
>>figclass: margin
>>alt: My figure text
>>name: myfig4
>>---
>>そして、ここが図のキャプションです
>>```

<!--
```{typescript}
asdf
asdf
asdf
```
-->


## パネル
https://sphinx-design.readthedocs.io/en/latest/cards.html

>`````
>````{card}
>パネルヘッダー1
>^^^
>パネルボディ1
>+++
>パネルフッター1
>````
>`````
>>````{card}
>>パネルヘッダー1
>>^^^
>>パネルボディ1
>>+++
>>パネルフッター1
>>````

## バッジ
>```
>{bdg}`plain badge`
>{bdg-primary}`primary` {bdg-primary-line}`primary-line`
>{bdg-secondary}`secondary` {bdg-secondary-line}`secondary-line`
>{bdg-success}`success` {bdg-success-line}`success-line`
>{bdg-info}`info` {bdg-info-line}`info-line`
>{bdg-warning}`warning` {bdg-warning-line}`warning-line`
>{bdg-danger}`danger` {bdg-danger-line}`danger-line`
>{bdg-light}`light` {bdg-light-line}`light-line`
>{bdg-dark}`dark` {bdg-dark-line}`dark-line`
>```
>>{bdg}`plain badge`
>>{bdg-primary}`primary` {bdg-primary-line}`primary-line`
>>{bdg-secondary}`secondary` {bdg-secondary-line}`secondary-line`
>>{bdg-success}`success` {bdg-success-line}`success-line`
>>{bdg-info}`info` {bdg-info-line}`info-line`
>>{bdg-warning}`warning` {bdg-warning-line}`warning-line`
>>{bdg-danger}`danger` {bdg-danger-line}`danger-line`
>>{bdg-light}`light` {bdg-light-line}`light-line`
>>{bdg-dark}`dark` {bdg-dark-line}`dark-line`


%{link-badge}`https://example.com,cls=badge-primary text-white,tooltip=a tooltip`
%{link-badge}`https://example.com,"my, text",cls=badge-dark text-white`
%{link-badge}`panels/usage,my reference,ref,badge-success text-white,hallo`

### ドロップダウン
>`````
>````{dropdown}
>:animate: fade-in-slide-down
>```
>git add .
>git commit -m "update"
>git push origin main
>```
>````
>`````
>>````{dropdown}
>>:animate: fade-in-slide-down
>>```
>>git add .
>>git commit -m "update"
>>git push origin main
>>```
>>````

% fade-in, fade-in-slide-down : 初めてフェードインするときのフェードイン
>````
>```{admonition} ボタンをクリックして表示！
>:class: dropdown
>隠れたトグルコンテンツがあります！
>```
>````
>
>>```{admonition} ボタンをクリックして表示！
>>:class: dropdown
>>隠れたトグルコンテンツがあります！
>>```

## 定義リスト
>```
>用語1
>: 定義
>
>用語2
>: 定義
>```
>>用語1
>>: 定義
>>
>>用語2
>>: 定義

>````
>```{glossary}
>用語1
>  用語1の説明
>
>2番目の用語
>  2番目の用語の説明
>```
>````
>>```{glossary}
>>用語1
>>  用語1の説明
>>
>>2番目の用語
>>  2番目の用語の説明
>>```

>````
>```{epigraph}
>ここにクールな引用があります。
>
>-- Jo the Jovyan
>```
>````
>>```{epigraph}
>>ここにクールな引用があります。
>>
>>-- Jo the Jovyan
>>```

### タブ

ex1
>`````
>````{tab-set}
>```{tab-item} タブ1のタイトル
>私の最初のタブ
>```
>
>```{tab-item} タブ2のタイトル
>`some code`を含む私の2番目のタブ！
>```
>````
>`````
>>````{tab-set}
>>```{tab-item} タブ1のタイトル
>>私の最初のタブ
>>```
>>
>>```{tab-item} タブ2のタイトル
>>`some code`を含む私の2番目のタブ！
>>```
>>````

ex2
>``````
>`````{tab-set}
>````{tab-item} c++
>
>```{code-block} c++
>
>int main(const int argc, const char **argv) {
>  return 0;
>}
>```
>````
>
>````{tab-item} python
>
>```{code-block} python
>
>def main():
>    return
>```
>````
>
>````{tab-item} java
>
>```{code-block} java
>
>class Main {
>    public static void main(String[] args) {
>    }
>}
>```
>````
>
>````{tab-item} julia
>
>```{code-block} julia
>
>function main()
>end
>```
>````
>
>````{tab-item} fortran
>
>```{code-block} fortran
>
>PROGRAM main
>END PROGRAM main
>```
>````
>`````
>``````
>>`````{tab-set}
>>````{tab-item} c++
>>
>>```{code-block} c++
>>
>>int main(const int argc, const char **argv) {
>>  return 0;
>>}
>>```
>>````
>>
>>````{tab-item} python
>>
>>```{code-block} python
>>
>>def main():
>>    return
>>```
>>````
>>
>>````{tab-item} java
>>
>>```{code-block} java
>>
>>class Main {
>>    public static void main(String[] args) {
>>    }
>>}
>>```
>>````
>>
>>````{tab-item} julia
>>
>>```{code-block} julia
>>
>>function main()
>>end
>>```
>>````
>>
>>````{tab-item} fortran
>>
>>```{code-block} fortran
>>
>>PROGRAM main
>>END PROGRAM main
>>```
>>````
>>`````

## key

サブスティテューションを使用するには、最初に次のようにページのトップにフロントマターのコンテンツを追加します：
````
---
substitutions:
  image: |
    ```{image} ../basic/github/img/GitHub-flow.png
    :alt: image
    :width: 200px
    ```
---
````
そして、次のように使用します： `{{image}}`

{{image}}


### 本全体のサブスティテューションを定義する

また、次の構成を使用して本全体のサブスティテューション変数を定義することもできます：

```
parse:
  myst_substitutions:
    key0: global-value
```
グローバル値: {{key0}}


### フォーマットのサブスティテューション
Sphinx構成の`substitutions`オプションを使用して、次のようにサブスティテューションを定義できます：
```
substitutions:
  repo_url: [私のリポジトリURL](https://github.com/executablebooks/jupyter-book)
```

## 脚注
>```
>これは脚注[^mylabel]です。
>[^mylabel]: 私の脚注テキスト。
>```
>>これは脚注[^mylabel]です。
>>[^mylabel]: 私の脚注テキスト。


## カスタム\<div> ブロック
>````
>```{div} my-class
>**いくつかのコンテンツ。**
>```
>````
>>```{div} my-class
>>**いくつかのコンテンツ。**
>>```


## マークの欠落を確認する
Jupyter Bookをビルドする際に、欠落している参照を確認できます。これを行うには、次のオプションを使用してください：
```shell
jupyter-book build -W -n --keep-going docs/
```

## レイアウト
full-width
>````
>```{note}
>:class: full-width
>全幅を取るノートです
>```
>````
>>```{note}
>>:class: full-width
>>全幅を取るノートです
>>```

## 証明、定理、アルゴリズム

これは現在はJupyter Bookのデフォルトパッケージには含まれていないもので、比較的新しいパッケージです。
```
pip install sphinx-proof
```

インストール後に _config.yml で有効にする必要があります。

```yaml
sphinx:
  extra_extensions:
    - sphinx_proof
```

https://sphinx-proof.readthedocs.io/en/latest/syntax.html



# ビルドと出力の公開

## 本のバッジを生成する
[![Jupyter Book バッジ](https://jupyterbook.org/badge.svg)](<https://github.com/kk564/jb-test.git>)
さらに、[shields.io](https://shields.io/) から直接バッジを生成することもできます。こちらは、Jupyter Bookのロゴのベース64エンコードバージョンを使用した自動生成バッジのURLです。ご自由に変更してください！

## LaTeXを使用してPDFをビルドする

### 本スタイルのPDF

LaTeXを使用してプロジェクトのPDFをビルドするには、次のコマンドを使用します：
```
jupyter-book build mybookname/ --builder pdflatex [--individualpages]

または
jb build mybookname/ --builder pdflatex [--individualpages]
```


````{note}
LaTeXファイルを生成するだけの場合は、次のコマンドを使用できます：
```bash
jb build mybookname/ --builder latex
```
````


## 本内の外部リンクをチェックする

本の外部リンクが有効であることを確認したい場合は、Jupyter Book で Sphinx リンクチェッカーを実行します。これにより、外部リンクの各々がチェックされます。

リンクチェッカーを実行するには、次のコマンドを使用します：
```
jupyter-book build mybookname/ --builder linkcheck
```
`Jupyter Book` の各リンクのステータスが表示され、必要に応じて不正なリンクを後で解決できるようになります。

## アクセシビリティの向上のための設定

本で使用される主要な言語を宣言することで、スクリーンリーダーやブラウザの翻訳ツールがサポートされます。

言語は、言語オプションに適切な言語コードを提供することで設定できます。これは、_config.yml ファイルの sphinx 構成内の language オプションに記述します：
```yaml
sphinx:
  config:
    language: en
```


## TeXマクロの定義

TeXブロックのMacrosオプションの下で、本全体にLaTeXマクロを定義できます。例として、次の2つのマクロはSphinx構成内で事前に定義されています
```yaml
sphinx:
  config                    :             # Sphinx構成を直接上書きするキーバリューペア
    mathjax_path            : https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
                                          # デフォルトではMathJaxバージョン2が使用されています。
                                          # 多くの数式を使用している場合は、バージョン3を試してみることができ、
                                          # 読み込み速度を60-80%向上させると報告されています。

:
    mathjax3_config:
      loader:                             # physicsパッケージを使用したい場合は、これをロードし、以下のパッケージリストに追加する必要があります。
        load                : ['[tex]/physics']
      tex:
        packages            : { '[+]': ['physics'] }
        macros:
          "N": "\\mathbb{N}"
          "floor": ["\\lfloor#1\\rfloor", 1]
          "bmat" : ["\\left[\\begin{array}"]
          "emat" : ["\\end{array}\\right]"]
```


また、特定のファイル用のTeXマクロを定義するには、mathディレクティブの下にファイルの先頭にそれらを導入します。例：

````
```latex
\newcommand\N{\mathbb{N}}
\newcommand\floor[1]{\lfloor#1\rfloor}
\newcommand{\bmat}{\left[\begin{array}}
\newcommand{\emat}{\end{array}\right]}
```
````


# 参考文献
- [Jupyter Book](https://jupyterbook.org/en/stable/start/your-first-book.html)
