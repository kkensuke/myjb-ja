---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.15.0
kernelspec:
  display_name: venv
  language: python
  name: python3
---
# Numpy
> last update: {sub-ref}`today`

Numpyは、科学計算のためのPythonライブラリです。高性能な多次元配列や行列を提供し、これらのオブジェクトを効率的に操作するためのツールを提供します。

```{code-cell} ipython3
import numpy as np
```

## Numpy配列の作成

+++

配列を作成する基本的な方法は、関数 `np.array()` を使用することです。これはリストを引数に取り、numpy配列を返します。

```{code-cell} ipython3
a = np.array([1, 2, 3])
print(a)
```

Numpyでは、配列を作成するための多くのメソッドがあります。例えば、`np.arange()` は整数の配列を作成し、`np.zeros()` はゼロの配列を作成し、`np.ones()` は1の配列を作成します。

```{code-cell} ipython3
np.arange(10)
```

```{code-cell} ipython3
np.arange(1, 10, 2)
```

```{code-cell} ipython3
np.zeros(10)
```

```{code-cell} ipython3
np.zeros((3, 5))
```

```{code-cell} ipython3
np.ones(10)
```

```{code-cell} ipython3
np.ones((3, 5))
```

`np.random.??` はランダムな配列を作成します。

`np.random.rand()` は、0から1の一様分布のランダムな数値の配列を作成します。

`np.random.randn()` は、標準正規分布からのランダムな数値の配列を作成します。

`np.random.randint(low, high, size)` は、lowからhighまでのランダムな整数の配列を作成します。

`np.random.choice(a, size, replace=True, p=None)` は、リストaからランダムな数値の配列を作成します。

```{code-cell} ipython3
np.random.seed(0)

print("np.random.rand(5) = ", np.random.rand(5), sep="\n", end="\n\n")

print("np.random.randn(5) = ", np.random.randn(5), sep="\n", end="\n\n")

print("np.random.rand(3, 5) = ", np.random.rand(3, 5), sep="\n", end="\n\n")

print("np.random.randint(low=1, high=10, size=5) = ", np.random.randint(low=1, high=10, size=5), end="\n\n")

print("np.random.randint(10) = ", np.random.randint(10), end="\n\n")

print("np.random.randint(1, 10, (3, 5)) = ", np.random.randint(1, 10, (3, 5)), sep="\n")

print("np.random.choice(['a', 'b', 'c'], 10) = ", np.random.choice(["a", "b", "c"], 10), sep="\n", end="\n\n")
```

`np.linspace(start, stop, num, endpoint=True)` は、指定された区間内で均等に分布する数値の配列を作成します。これは関数をプロットする際に便利です。

```{code-cell} ipython3
np.linspace(0, 1, 6)
```

`np.eye()` は、対角線上に1があり他は0の行列を作成します。行と列の数を指定して非正方形の単位行列を作成することもできます。

```{code-cell} ipython3
np.eye(3, 5)
```

```{code-cell} ipython3
np.eye(5)  # これは np.identity(5) と同じです
```

```{code-cell} ipython3
np.identity(5)
```

`np.empty()` は、与えられた形状とデータ型の未初期化（任意の）データの配列を作成します。配列を作成してから後でデータで埋める場合に使用されます。`np.zeros()` や `np.ones()` を使用して0または1の配列を作成するよりも速くなります。

```{code-cell} ipython3
np.empty(10)
```

`np.zeros_like()`, `np.ones_like()`, `np.empty_like()` は、与えられた配列と同じ形状とデータ型のゼロ、1、または未初期化のデータの配列を作成します。

```{code-cell} ipython3
a = np.array([[1, 2, 3], [4, 5, 6]])

np.zeros_like(a)
```

```{code-cell} ipython3
np.full((3, 5), 3)
```

```{code-cell} ipython3
np.fromfunction(lambda i, j: i + j, (3, 5))
```

## 配列の操作

```{code-cell} ipython3
# 配列に 4 を追加する

a = np.array([1, 2, 3])
b = np.append(a, 4)
print(b)
```

```{code-cell} ipython3
# a[1] を削除する
a = np.array([1, 2, 3])
b = np.delete(a, 1)
print(b)
```

```{code-cell} ipython3
# 配列をソートする
a = np.array([3, 2, 1])
b = np.sort(a)
print(b)
```

```{code-cell} ipython3
# 二つの配列を連結する
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
c = np.concatenate((a, b))
print(c)
```

```{code-cell} ipython3
# 配列を再形成する
a = np.array([1, 2, 3, 4, 5, 6])
print("a.shape ", a.shape)
b = a.reshape(2, 3)
print("b = ", b)
print("b.shape ", b.shape)
```

```{code-cell} ipython3
# 条件に基づく選択
a = np.array([1, 2, 3, 4, 5, 6])
print(a > 3)
print(a[a > 3])
```

```{code-cell} ipython3
# 配列をスライスする
a = np.array([1, 2, 3, 4, 5, 6])
# a[1] から a[3] までを表示します（a[4]（=5）は含まれません）
print(a[1:4])
```

## 配列の演算

```{code-cell} ipython3
a = np.array([1, 2, 3, 4])
b = np.array([5, 6, 7, 8])

# 加算
print(a + b)

# 減算
print(a - b)

# 乗算
print(a * b)

# 除算
print(a / b)
```

```{code-cell} ipython3
a = np.array([1, 2, 3, 4])

# 各要素にスカラーを加算
print("a + 2 = ", a + 2)

# 各要素からスカラーを減算
print("a - 2 = ", a - 2)

# 各要素にスカラーを乗算
print("a * 2 = ", a * 2)

# 各要素をスカラーで除算
print("a / 2 = ", a / 2)

# 各要素の平方根を取得
print("a ** 0.5 = ", np.sqrt(a))

# 各要素を二乗
print("a ** 2 = ", a**2)

# 各要素の対数を取得
print("np.log(a) = ", np.log(a))

# 各要素の指数を取得
print("np.exp(a) = ", np.exp(a))

# 各要素の sin を取得
print("np.sin(a) = ", np.sin(a))

# 各要素の cos を取得
print("np.cos(a) = ", np.cos(a))
```

```{code-cell} ipython3
a = np.array([1, 2, 3, 4, 5])

# 最大値
print("max = ", a.max())

# 最小値
print("min = ", a.min())

# 最大値のインデックス
print("argmax = ", a.argmax())

# 最小値のインデックス
print("argmin = ", a.argmin())

# 合計
print("sum = ", a.sum())

# 平均
print("mean = ", a.mean())

# 標準偏差
print("std = ", a.std())

# 分散
print("var = ", a.var())
```

```{code-cell} ipython3
# ドット積
a = np.array([1, 2, 3, 4])
b = np.array([5, 6, 7, 8])
print(np.dot(a, b))
```

## 行列の操作

```{code-cell} ipython3
a = np.array([[1, 2, 3], [4, 5, 6]])
b = np.array([[7, 8], [9, 10], [11, 12]])

# 行列の積
print(np.dot(a, b), end="\n\n")

print(a.dot(b), end="\n\n")

print(a @ b, end="\n\n")
```

```{code-cell} ipython3
a = np.array([[1, 2, 3], [4, 6, 8], [7, 11, 13]])

# 転置行列
print("a.T = ", a.T, sep="\n", end="\n\n")

# トレース
print("np.trace(a) = ", np.trace(a), end="\n\n")

# 行列式
print("np.linalg.det(a) = ", np.linalg.det(a), end="\n\n")

# 逆行列
print("np.linalg.inv(a) = ", np.linalg.inv(a), sep="\n", end="\n\n")
```

`np.linalg.???` は、線形代数のためのモジュールです。`linalg` は `scipy.linalg.???` としても `scipy` から呼び出すことができます。

```{code-cell} ipython3
# 固有値と固有ベクトル
eigvals, eigvecs = np.linalg.eig(a)
print("eigvals = ", eigvals, sep="\n", end="\n\n")
print("eigvecs = ", eigvecs, sep="\n", end="\n\n")

print("a = ", eigvecs @ np.diag(eigvals) @ np.linalg.inv(eigvecs), sep="\n", end="\n\n")
```

```{code-cell} ipython3
# 特異値分解
U, S, V = np.linalg.svd(a)
print("U = ", U, sep="\n", end="\n\n")
print("S = ", S, sep="\n", end="\n\n")
print("V = ", V, sep="\n", end="\n\n")

print("a = ", U @ np.diag(S) @ V, sep="\n", end="\n\n")
```

## [Numpyについてもっと学ぶ](https://numpy.org/doc/stable/user/absolute_beginners.html)