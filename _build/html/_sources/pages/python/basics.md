---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.15.0
kernelspec:
  display_name: 'Python 3.8.9 (''venv'': venv)'
  language: python
  name: python3
---

# Python and Jupyterlab


[Python](https://www.python.org/) とは、シンプルで最も人気のあるプログラミング言語であり、AIや機械学習、データ分析、データ可視化、Web、ゲームなどのさまざまな分野で使用されています。

[JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) は、Python プログラミングのために作られた、Web ベースの次世代型ユーザーインターフェースです。

ここでは、Python の基本と JupyterLab の使い方を学ぶことができます。jupyter-lab をインストールしていない場合は、[venv](venv) を参照してください。

+++

---
## `print()` 関数

`print()` 関数は、Python で最も基本的な関数です。変数や式の値を表示するために使用されます。
ここでは、jupyter lab(notebook) の使用方法とともに、`print()` 関数の使い方を見ていきます。

+++

まずは、`print()` 関数を使って文字列 "Hello World" を表示してみましょう。
jupyter lab(notebook) では、コードブロックを `cell` と呼びます。`cell` には複数行のコードを記述することができます。
コードを実行するには、`cell` をクリックしてから `Shift+Enter` キーを押します。

```{code-cell} ipython3
print("Hello, world!")
```

### コメント

+++

プログラミングにおいて、コードの説明をするためにコメントを書くことがあります。Python では、`#` を使ってコメントを書くことができます。

複数行のコメントを書きたい場合は、`""" """` を使ってコメントを書くことができます（実際には、これは docstrings と呼ばれます）。

```{code-cell} ipython3
# This is a comment. No output.

"""
    This
    is
    a 
    multiline
    comment.
"""
```

### 算術演算

```{code-cell} ipython3
print(1+1)
```

プログラミングにおいて、すべてのオブジェクトにはデータ型があります。例えば、数字の `1` はデータ型 `int` を持ちます。
"Hello World" という文字列はデータ型 `str` を持ちます。データ型が異なる場合、演算は異なる方法で行われます。

例えば、`+` 演算子は2つの数字を足すために使われ、`+` 演算子は2つの文字列を連結するために使われます。

```{code-cell} ipython3
# 以下のように文字列を使って計算することはできません。
print(3+4)
print('3+4')
print('3'+'4')
```

```{code-cell} ipython3
# これはエラーになります。数字と文字列を足すことはできません。
# 文字列を数字に変換するか、数字を文字列に変換する必要があります。
print(3+'4')
```

```{code-cell} ipython3
a = 3 # これは変数です。
b = '4' # これは変数です。
print(a+b) # 上のセルと同じ結果になります。
```

```{code-cell} ipython3
# `,` を使って複数の入力を表示する
print(a, b)
```

```{code-cell} ipython3
print(a + int(b)) # これは文字列を数字に変換します。
print(str(a) + b) # これは数字を文字列に変換します。
```

```{code-cell} ipython3
# Basic arithmetic operations
print('足し算 1+1 = ', 1+1)
print('引き算 5-1 = ', 5-1)
print('掛け算 2*2 = ', 2*2)
print('割り算 5/2 = ', 5/2)
print('剰余 5%2 = ', 5%2)
print('切り捨て割り算 5//2 = ', 5//2)
print('累乗 5**2 = ', 5**2)
```

```{code-cell} ipython3
# 改行する代わりにセミコロンを使うこともできます。
print('adsf'); print('asdf')
```

### jupyter lab の使い方

+++

基本的に、コードセルはコードを書くために使われます。しかし、コードセルを使ってマークダウン形式でコメントを書くこともできます。
マークダウン形式で書きたい場合は、セルの周りを右クリックして `m` を押してから `Shift+Enter` を押します。コード形式に戻すには `y` を押します。
また、`a` または `b` を押すことで新しいセルを追加することができます（`a` は上に、`b` は下に追加されます）。
その他の操作; `x`; セルを切り取る。`c`（複数のセルをコピーする場合は Shift + `c`）; セルをコピーする。`v`; セルを貼り付ける。`z`; 元に戻す。

[マークダウンの使い方](../basic/markdown.md)

+++

---
## コレクション（リスト、タプル、セット、辞書）

リスト、タプル、セット、辞書は、データを異なる方法で保存するために使われます。

```{code-cell} ipython3
l = [3,4,5]
index = 0 # インデックスは 0 から始まります。
print(l[index])

l[1] = 7 # リストの要素の値は、変更することができます。
print(l)
```

```{code-cell} ipython3
# リストの要素には、異なるデータ型のデータを使うことができます。
l = [3,4,5,'a','b','c', True, False, [1,2,3]]
```

```{code-cell} ipython3
t = (3,4,5)

t[2] = 7
# タプルの要素の値は、変更することができません。
# しかし、タプルはリストよりもメモリを少ない使います。
```

```{code-cell} ipython3
s = {3,4,5,5}
print(s)
```

```{code-cell} ipython3
d = {'a':3,'b':4,'c':5}
print(d['a'])

d['a'] = 6 # 辞書の要素の値は、変更することができます。
d['d'] = 7 # 辞書には新しいキーと値のペアを追加することができます。
print(d)

print(d.items()) # `items()` は、辞書のすべてのキーと値のペアをリストとして返します。
print(d.keys()) # `keys()` は、辞書のすべてのキーをリストとして返します。
print(d.values()) # `values()` は、辞書のすべての値をリストとして返します。
```

---
## ファイルを開く

```{code-cell} ipython3
path = './sample.txt'
with open(path) as f:
    l = f.readlines()
    print(l)
    for i in range(len(l)):
        print(l[i])
```

---
## For ループ

`for loop` は、コレクションの要素を反復処理するために使われます。

```{code-cell} ipython3
for i in range(5):
    print(i)
# インデックスは 0 から始まります。
```

```{code-cell} ipython3
for i in range(5,10):
    print(i)
# インデックスは 5 から始まります。
# cf. range(5,13,2)
```

```{code-cell} ipython3
items = ['a','b','c','d','e']
for i in items:
    print(i)
# `for loop` は、リスト、タプル、辞書、文字列などを反復処理するために使われます。

print('-------------------------------')
for i in range(len(items)):
    print(items[i])
```

```{code-cell} ipython3
for i, item in enumerate(items):
    print(i, item)
```

```{code-cell} ipython3
for _ in range(5):
    print('Hello')
```

---
## 内包表記

```{code-cell} ipython3
[i for i in range(5)]
```

```{code-cell} ipython3
data = [3,14,23,28,35,46,55,65,76,87,98,109,120,131,142]
[x*10 for x in data]
```

```{code-cell} ipython3
[x for x in data if x%2==0]
```

```{code-cell} ipython3
[x if x>50 else x*10 for x in data]
```

リスト内包表記は、以下のように使うこともできますが、読みにくくなるのでおすすめしません。

```{code-cell} ipython3
import numpy as np # これはモジュールです。NumPy は、配列を扱うための多くの便利な関数を含むパッケージです。
a = np.arange(1,51)
fizz_buzz = ['fizzbuzz' if x%3==0 and x%5==0 else 'fizz' if x%3==0 else 'buzz' if x%5==0 else x for x in a]
print(fizz_buzz)
```

---
## 関数

`function` は、入力を受け取り、出力を返すコードのブロックです。呼び出されたときにのみ実行されます。
実際には、私たちが書くコードのほとんどは、関数で構成されています。

```{code-cell} ipython3
def print_hello():
    print('Hello, world!')
```

```{code-cell} ipython3
print_hello()
```

```{code-cell} ipython3
def myfunc(arg1, arg2):
    for i in range(arg1):
        print(arg2)

myfunc(3, 'Hello')
# = myfunc(arg1=3, arg2='Hello')
```

```{code-cell} ipython3
import numpy as np
import matplotlib.pyplot as plt # Matplotlib は、グラフを描画するための多くの便利な関数を含むパッケージです。

x = np.linspace(0,10, 100)
y = np.sin(x)

print(x[:5])
print(y[:5])
```

```{code-cell} ipython3
plt.plot(x,y)
plt.title('sin')
plt.show()
```

### ラムダ関数

+++

$$ f(x) = x^2 $$

```{code-cell} ipython3
f = lambda x: x**2

print(f(3))
```

## 参考資料
[Python Beginners Guide](https://wiki.python.org/moin/BeginnersGuide/Programmers)
