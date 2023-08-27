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

# [Matplotlib](https://matplotlib.org/)
> last modified: {sub-ref}`today`

Matplotlib は、Python でさまざまなグラフを描画するための包括的なライブラリです。

```{code-cell} ipython3
import matplotlib.pyplot as plt
import numpy as np
```

## 1. 直線をプロットする

```{code-cell} ipython3
# 正方関数を定義
def square(x):
    return x**2

# x と y の値を作成
# np.linspace() は、指定された範囲内で均等に分布する数値を返す関数です。
# これを使用して、-5 から 5 までのx値を、間に 100 のポイントで作成します。
x = np.linspace(-5, 5, 100)
y = square(x)
```

```{code-cell} ipython3
# 関数をプロットします。`plt` は `matplotlib.pyplot` の別名です。
plt.plot(x, y)
plt.show()
```

```{code-cell} ipython3
# 関数をプロットします。`plt` は `matplotlib.pyplot` の別名です。
plt.plot(x, y)

# 軸にラベルを追加
plt.xlabel('x')
plt.ylabel('y')

# タイトルを追加
plt.title('Square function')

plt.show()
```

### 色、マーカースタイル、および線スタイルを変更する

```{code-cell} ipython3
x = np.linspace(-5, 5, 10)
y = square(x)

# プロット関数内で色、マーカー、および線スタイルを指定できます。
plt.plot(x, y, color='red', marker='o', linestyle='--', label='label')

# 凡例を表示します。これは `plot()` 関数で定義された `label` を使用します。
plt.legend()

# 軸にラベルを追加
plt.xlabel('x')
plt.ylabel('y')

# タイトルを追加
plt.title('Square function')

plt.show()
```

立方体関数のプロットを追加します。

```{code-cell} ipython3
def cube(x):
    return x**3
```

```{code-cell} ipython3
x = np.linspace(-3, 3, 10)
y = square(x)
z = cube(x)

# プロット関数内で色、マーカー、および線スタイルを指定できます。
plt.plot(x, y, color='red', marker='o', linestyle='--', label='Square')
plt.plot(x, z, color='blue', marker='x', linestyle='-', label='Cube')

# 凡例を表示します。これは `plot()` 関数で定義された `label` を使用します。
plt.legend()

# 軸にラベルを追加
plt.xlabel('x')
plt.ylabel('y')

# タイトルを追加
plt.title('Square function and cube function')

plt.show()
```

### `plt.semilogy` はy軸を対数スケールでプロットします。

```{code-cell} ipython3
x = np.linspace(0.1, 10, 10)
y = square(x)
z = cube(x)

# プロット関数内で色、マーカー、および線スタイルを指定できます。
plt.semilogy(x, y, color='red', marker='o', linestyle='--', label='Square')
plt.semilogy(x, z, color='blue', marker='x', linestyle='-', label='Cube')

# 凡例を表示します。これは `plot()` 関数で定義された `label` を使用します。
plt.legend()

# 軸にラベルを追加
plt.xlabel('x')
plt.ylabel('y')

# タイトルを追加
plt.title('Square function and cube function')

plt.show()
```

```{code-cell} ipython3
x = np.linspace(-5, 5, 10)
y = np.exp(x)

# プロット関数内で色、マーカー、および線スタイルを指定できます。
plt.semilogy(x, y, label='Exponential')

# 凡例を表示します。これは `plot()` 関数で定義された `label` を使用します。
plt.legend()

# 軸にラベルを追加
plt.xlabel('x')
plt.ylabel('exp(x)')

# タイトルを追加
plt.title('Exponential function')

plt.show()
```

## 2. 散布図

```{code-cell} ipython3
# 散布図
x = np.linspace(-5, 5, 20)
y = square(x)

plt.scatter(x, y)
plt.show()
```

```{code-cell} ipython3
np.random.seed(0)

# 散布図：平均0、標準偏差 1 のガウス分布
x = np.random.normal(size=1000)
y = np.random.normal(size=1000)

plt.scatter(x, y)
plt.show()
```

## 3. ヒストグラム

```{code-cell} ipython3
np.random.seed(0)

# 平均0、標準偏差1の正規分布から 10000 個の乱数を生成します。
x = np.random.normal(0, 1, 10000)

# 50 のビンでヒストグラムをプロットします。
plt.hist(x, bins=50)
plt.show()
```

別のヒストグラムを追加します。

```{code-cell} ipython3
np.random.seed(0)

# 平均0、標準偏差 1 の正規分布から 10000 個の乱数を生成します。
x = np.random.normal(0, 1, 10000)
# 平均2、標準偏差 0.5 の正規分布から 10000 個の乱数を生成します。
y = np.random.normal(2, 0.5, 10000)

# 50 のビンでヒストグラムをプロットします。
# `alpha` は棒の透明度です。複数のヒストグラムを比較するために使用されます。
plt.hist(x, bins=50, color='blue', alpha=0.5, label='x')
plt.hist(y, bins=50, color='green', alpha=0.5, label='y')

# 凡例を表示します。これは `hist()` 関数で定義された `label` を使用します。
plt.legend()

# 軸にラベルを追加
plt.xlabel('value')
plt.ylabel('count')

# タイトルを追加
plt.title('Histogram')

plt.show()
```

```{code-cell} ipython3
import matplotlib.pyplot as plt
import numpy as np

year = ("2003", "2013", "2023")
gdps = {
    'Japan': (4519.56, 5212.33, 4409.74),
    'China': (1656.96, 9624.93, 19373.59),
    'USA': (11456.45, 16843.23, 26854.60),
}

x = np.arange(len(year)) * 1  # ラベルの位置
width = 0.3  # バーの幅
multiplier = 0

fig, ax = plt.subplots(constrained_layout=True)

for country, gdp in gdps.items():
    offset = width * multiplier
    rects = ax.bar(x + offset, gdp, width, label=country)
    ax.bar_label(rects, padding=3)
    multiplier += 1


ax.set_ylabel('GDP (billion USD)')
ax.set_title('GDP')
ax.set_xticks(x + width, year)
ax.legend(loc='upper left', ncols=3)

plt.show()
```

## 5. 2D プロット

```{code-cell} ipython3
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 2 * np.pi, 1024)
data2d = np.sin(t)[:, np.newaxis] * np.sin(t)[np.newaxis, :]

fig, ax = plt.subplots()
im = ax.imshow(data2d)

fig.colorbar(im, ax=ax, label='Colorbar')

ax.set_title('sin(x)sin(y)')
plt.show()
```

## 6. 3D ラインプロット

```{code-cell} ipython3
def pos(t):
    
    x = np.exp(-t) * np.cos(10 * np.pi * t)
    y = np.exp(-t) * np.sin(10 * np.pi * t)
    z = t
    
    return x, y, z

t = np.linspace(0, 2, 1000)

x, y, z = pos(t)

fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(projection='3d')

ax.plot(x, y, z, label='parametric curve')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')

ax.set_title("3D Parametric Curve")
plt.show()
```

## 7. 3D サーフェスプロット

```{code-cell} ipython3
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator
import numpy as np

fig, ax = plt.subplots(subplot_kw={"projection": "3d"})

# データを作成します。
X = np.arange(-5, 5, 0.05)
Y = np.arange(-5, 5, 0.05)
X, Y = np.meshgrid(X, Y)
Z = np.sin(X) * np.cos(Y)

# サーフェスをプロットします。
surf = ax.plot_surface(X, Y, Z, cmap=cm.coolwarm, linewidth=0, antialiased=False)

# z軸をカスタマイズします。
ax.set_zlim(-1.01, 1.01)
ax.zaxis.set_major_locator(LinearLocator(5))
ax.zaxis.set_major_formatter('{x:.02f}')

# 値を色にマッピングするカラーバーを追加します。
fig.colorbar(surf, shrink=0.5, aspect=9)

plt.show()
```