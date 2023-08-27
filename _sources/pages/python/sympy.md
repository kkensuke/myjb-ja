---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.15.0
kernelspec:
  display_name: Python 3 (ipykernel)
  language: python
  name: python3
---
# [SymPY](https://www.tutorialspoint.com/sympy/index.htm)
> last modified: {sub-ref}`today`

> SymPy は、数式処理のための Python ライブラリです。 - SymPy ドキュメント

このページでは、SymPyの使用例を見ることができます。

```{code-cell} ipython3
from sympy import *
```

## 記号の宣言

```{code-cell} ipython3
x = Symbol("x")
y = Symbol("y")
```

```{code-cell} ipython3
(x + y) ** 2
```

## 展開

```{code-cell} ipython3
f = expand((x + y) ** 2)
display(f)
```

## 代入

```{code-cell} ipython3
f.subs({x: 1, y: 2})
```

## 因数分解

```{code-cell} ipython3
factor(x**2 - 4 * x + 3)
```

## 方程式の解

```{code-cell} ipython3
solve(x**2 - x - 1)
```

## 部分分数分解

```{code-cell} ipython3
apart(1 / (x**5 - 1))
```

## 積分と微分

```{code-cell} ipython3
a = Symbol("a")  # real=Trueを指定しない場合、aは複素数として扱われます。
b = Symbol("b")

u = exp(a * x) * sin(b * x)
display(u)
```

```{code-cell} ipython3
int_u = integrate(u, x)
display(int_u)
```

```{code-cell} ipython3
R = diff(u, x, 2) + u + x
display(R)
```

## 総和

```{code-cell} ipython3
k, N = symbols("k, N", integer=True)
factor(summation(k, (k, 1, N)))
```

## 極限

$$ \lim_{x \to 0} \frac{\sin x}{x} = 1 $$

```{code-cell} ipython3
limit(sin(x) / x, x, 0)
```

## その他の例

```{code-cell} ipython3
s = Symbol("s")
t = Symbol("t")

l = (s**2 * x**3) + (t * x**2) + (3 * x) + 1

display(l)
```

```{code-cell} ipython3
int_l = integrate(l, (x, 0, 1))
display(int_l)
```