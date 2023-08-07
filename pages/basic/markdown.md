# マークダウン

ここでは、Markdown の基本的な使用方法を学びます。Markdown は**定式化され、構造化されたテキストを作成するためのシンプルで軽量なマークアップ言語**です。
このJupyter Book のソースコードも Markdown で書かれています（特に MyST）。Markdown を使用してウェブサイト、ドキュメント、ノート、書籍、プレゼンテーション、メールメッセージなどを作成できます。MyST は、**科学技術文書**向けの Markdown の派生版の一つです。

以下では、どのように Markdown を書くかと、それがどのように見えるかを示します。

>```md
># 見出し1
>## 見出し2
>### 見出し3
>```
>
>># 見出し1
>>## 見出し2
>>### 見出し3
---

## 水平線
>```md
>---
>```
>---
>
>placeholdertext


## リスト
>```md
>- リスト項目1
>- リスト項目2
>- リスト項目3
>    - リスト項目3-1
>    - リスト項目3-2
>        - リスト項目3-2-1
>        * リスト項目3-2-2
>        + リスト項目3-2-3
>
>1. 番号付きリスト項目1
>2. 番号付きリスト項目2
>3. 番号付きリスト項目3
>    1. 番号付きリスト項目3-1
>    2. 番号付きリスト項目3-2
>```
>
>>- リスト項目1
>>- リスト項目2
>>- リスト項目3
>>    - リスト項目3-1
>>    - リスト項目3-2
>>        - リスト項目3-2-1
>>        * リスト項目3-2-2
>>        + リスト項目3-2-3
>>
>>
>>1. 番号付きリスト項目1
>>2. 番号付きリスト項目2
>>3. 番号付きリスト項目3
>>    1. 番号付きリスト項目3-1
>>    2. 番号付きリスト項目3-2
---

## 改行
改行は、行末に半角スペースを2つ入れることで行えます。  

---


## 色
Markdown内ではHTMLを使用できます。
>```md
><font color="red">赤い文字</font>
>```
>><font color="red">赤い文字 </font>
---

## コード
>````md
>```python
>import streamlit as st
>import numpy as np
>import pandas as pd
>```
>````
>>```python
>>import streamlit as st
>>import numpy as np
>>import pandas as pd
>>```
---

## リンク
>```md
>[Wikipedia](https://ja.wikipedia.org/wiki/Markdown)
>```
>>リンク
[Wikipedia](https://ja.wikipedia.org/wiki/Markdown)

---

## チェックボックス
>```md
>- [ ] タスク1
>- [x] タスク2
>```
>>- [ ] タスク1
>>- [x] タスク2
---

## 生のテキスト、コード、斜体、太字、取り消し線
>````md
>```
>asdf
>```
>
>`asdf`
>
>*asdf*
>_adsf_
>
>**asdf**
>__adsf__
>
>***asdf***
>___adsf___
>*__adsf__*
>~~asdf~~
>````
>>```
>>asdf
>>```
>>
>>`asdf`
>>
>>*asdf*
>>_adsf_
>>
>>**asdf**
>>__adsf__
>>
>>***asdf***
>>___adsf___
>>*__adsf__*
>>
>>~~asdf~~
---

## LaTeX
>```md
>>$\LaTeX$
>$$
>\left( \sum_{k=1}^n a_k b_k \right)^2 \leq
>\left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 >\right)
>$$
>```
>>$\LaTeX$
>>
>>$$
\left( \sum_{k=1}^n a_k b_k \right)^2 \leq
\left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
$$

## 引用
>```md
>> これは引用です。
>```
>> これは引用です。
---

## テーブル
>```md
>| ヘッダー1 | ヘッダー2 | ヘッダー3 |
>| :-------- | :--------: | --------: |
>| 左揃え | 中央揃え | 右揃え |
>| セル1   | セル2   | セル3   |
>| セル4   | セル5   | セル6   |
>| キャプション |
>```
>>| ヘッダー1 | ヘッダー2 | ヘッダー3 |
>>| :-------- | :--------: | --------: |
>>| 左揃え | 中央揃え | 右揃え |
>>| セル1   | セル2   | セル3   |
>>| セル4   | セル5   | セル6   |
>>| キャプション |
---


## ページ内リンク
>```md
>[リストへのリンク](#リスト)
>```
>>[リストへのリンク](#リスト)



## 参考
- [Markdownガイド](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiW8bKRiv33AhXFC94KHb5XAYgQFnoECAwQAQ&url=https%3A%2F%2Fwww.markdownguide.org%2F&usg=AOvVaw1fohdJEEbL6kohiJ-Pimbe)
