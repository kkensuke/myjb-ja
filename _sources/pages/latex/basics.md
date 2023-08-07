Latexの基本
===

## インライン数式

`$`を使ってインライン数式を書くことができます。

````{admonition} 例
```latex
物理学で最も有名な方程式は$E=mc^2$です。
```

物理学で最も有名な方程式は$E=mc^2$です。
````

## ディスプレイ数式

`$$`または`\[ \]`を使用してディスプレイ数式を書くことができます。

````{admonition} 例

```latex
シュレディンガー方程式は
$$
    i\hbar\frac{\partial}{\partial t}|\psi(t)\rangle = H |\psi(t)\rangle
$$
```
シュレディンガー方程式は

$$
    i\hbar\frac{\partial}{\partial t}|\psi(t)\rangle = H |\psi(t)\rangle
$$
````


````{tip}
`physics`パッケージを使用すると、短縮コマンドを使用して数式を書くことができます。

>```latex
>\begin{align}
>    \pdv{t} \ket{\psi(t)} = H \ket{\psi(t)}
>\end{align}
>```
>$$\begin{align}
    \pdv{t} \ket{\psi(t)} = H \ket{\psi(t)}
\end{align}$$
````

## 基本的な記号

### ギリシャ文字
| コマンド  | 記号  |
| -------- | ------- |
| `\alpha` | $\alpha$ |
| `\beta`  | $\beta$ |
| `\gamma` | $\gamma$ |
| `\delta` | $\delta$ |
| `\epsilon` | $\epsilon$ |
| `\zeta`  | $\zeta$ |
| `\eta`   | $\eta$ |
| `\theta` | $\theta$ |
| `\iota`  | $\iota$ |
| `\kappa` | $\kappa$ |
| `\lambda`| $\lambda$ |
| `\mu`    | $\mu$ |
| `\nu`    | $\nu$ |
| `\xi`    | $\xi$ |
| `\pi`    | $\pi$ |
| `\rho`   | $\rho$ |
| `\sigma` | $\sigma$ |
| `\tau`   | $\tau$ |
| `\upsilon` | $\upsilon$ |
| `\phi`   | $\phi$ |
| `\chi`   | $\chi$ |
| `\psi`   | $\psi$ |
| `\omega` | $\omega$ |
| `\Gamma` | $\Gamma$ |
| `\Delta` | $\Delta$ |
| `\Theta` | $\Theta$ |
| `\Lambda`| $\Lambda$ |
| `\Xi`    | $\Xi$ |
| `\Pi`    | $\Pi$ |
| `\Sigma` | $\Sigma$ |
| `\Upsilon` | $\Upsilon$ |
| `\Phi`   | $\Phi$ |
| `\Psi`   | $\Psi$ |
| `\Omega` | $\Omega$ |


### 演算子
| コマンド | 記号 |
| ------- | ------ |
| `+`     | $+$    |
| `-`     | $-$    |
| `=`     | $=$    |
| `\div`  | ÷      |
| `\frac{a}{b}` | $\frac{a}{b}$ |
| `\times` | $\times$ |
| `\pm`   | $\pm$  |


```{note}
`physics`パッケージでは、`\div`は$\nabla\cdot$に置き換えられます。
```


### 大きな演算子
| コマンド | 記号          |
| ------- | --------------- |
| `\lim x` | $\lim x$        |
| `\lim_{x \to \infty} x` | $\lim_{x \to \infty} x$ |
| `\lim\limits_{x \to \infty} x` | $\lim\limits_{x \to \infty} x$ |
| `\sum x` | $\sum x$        |
| `\sum_{i=1}^n x` | $\sum_{i=1}^n x$ |
| `\sum\limits_{i=1}^n x` | $\sum\limits_{i=1}^n x$ |
| `\prod_{i=1}^n x` | $\prod_{i=1}^n x$ |
| `\coprod_{i=1}^n x` | $\coprod_{i=1}^n x$ |
| `\bigcup_{i=1}^n x` | $\bigcup_{i=1}^n x$ |
| `\bigcap_{i=1}^n x` | $\bigcap_{i=1}^n x$ |
| `\bigvee_{i=1}^n x` | $\bigvee_{i=1}^n x$ |
| `\bigwedge_{i=1}^n x` | $\bigwedge_{i=1}^n x$ |
| `\bigsqcup_{i=1}^n x` | $\bigsqcup_{i=1}^n x$ |
| `\bigodot_{i=1}^n x` | $\bigodot_{i=1}^n x$ |
| `\bigotimes_{i=1}^n x` | $\bigotimes_{i=1}^n x$ |
| `\int_a^b x` | $\int_a^b x$ |
| `\oint_a^b x` | $\oint_a^b x$ |
| `\iint_a^b x` | $\iint_a^b x$ |
| `\iiint_a^b x` | $\iiint_a^b x$ |




### その他
| コマンド        | 記号        |
| -------------- | ------------- |
| `\forall`      | $\forall$     |
| `\exists`      | $\exists$     |
| `\partial`     | $\partial$    |
| `\nabla`       | $\nabla$      |
| `\infty`       | $\infty$      |
| `\dots`        | $\dots$       |
| `\cdot`        | $\cdot$       |
| `\cdots`       | $\cdots$      |
| `\vdots`       | $\vdots$      |
| `\ddots`       | $\ddots$      |
| `\therefore`   | $\therefore$  |
| `\because`     | $\because
| `\clubsuit`    | $\clubsuit$   |
| `\diamondsuit` | $\diamondsuit$|
| `\heartsuit`   | $\heartsuit$  |
| `\spadesuit`   | $\spadesuit$  |
| `\prime`       | $\prime$      |
| `f^\prime`     | $f^\prime$    |
| `\angle`       | $\angle$      |



```{admonition} ドットの使い方
$$
    \sum_{i=1}^n x_i = x_1 + x_2 + \cdots + x_n
$$

$$
    A = \mqty[a_{11} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{n1} & \cdots & a_{nn}]
$$
```


### 関数
| コマンド | 記号 |
| ----- | ----- |
| `\sqrt{x}` | $\sqrt{x}$ |
| `\sqrt[n]{x}` | $\sqrt[n]{x}$ |
| `\sin x` | $\sin x$ |
| `\cos x` | $\cos x$ |
| `\tan x` | $\tan x$ |
| `\cot x` | $\cot x$ |
| `\sec x` | $\sec x$ |
| `\csc x` | $\csc x$ |
| `\arcsin x` | $\arcsin x$ |
| `\arccos x` | $\arccos x$ |
| `\arctan x` | $\arctan x$ |
| `\sinh x` | $\sinh x$ |
| `\cosh x` | $\cosh x$ |
| `\tanh x` | $\tanh x$ |
| `\coth x` | $\coth x$ |
| `\log x` | $\log x$ |
| `\ln x` | $\ln x$ |
| `\exp x` | $\exp x$ |
| `\binom{n}{k}` | $\binom{n}{k}$ |


```{tip}
`\sum_{i=1}^n x` の代わりに、`\sum\limits_{i=1}^n x` と書くと、上下に記号が表示されます。

> `\sum_{i=1}^n x` の代わりに、`\sum\limits_{i=1}^n x` と書くと、上下に記号が表示されます。
```

### 関係
| コマンド | 記号 |
| ----- | ----- |
| `a = b` | $a = b$ |
| `a \neq b` | $a \neq b$ |
| `a \approx b` | $a \approx b$ |
| `a \equiv b` | $a \equiv b$ |
| `a \leq b` | $a \leq b$ |
| `a \geq b` | $a \geq b$ |
| `a \ll b` | $a \ll b$ |
| `a \gg b` | $a \gg b$ |
| `a \sim b` | $a \sim b$ |
| `a \propto b` | $a \propto b$ |
| `a \subset b` | $a \subset b$ |
| `a \supset b` | $a \supset b$ |
| `a \subseteq b` | $a \subseteq b$ |
| `a \supseteq b` | $a \supseteq b$ |
| `a \in b` | $a \in b$ |
| `a \ni b` | $a \ni b$ |
| `a \notin b` | $a \notin b$ |
| `a \mapsto b` | $a \mapsto b$ |
| `a \to b` | $a \to b$ |
| `a \gets b` | $a \gets b$ |
| `a \leftrightarrow b` | $a \leftrightarrow b$ |
| `a \Leftrightarrow b` | $a \Leftrightarrow b$ |
| `a \implies b` | $a \implies b$ |
| `a \impliedby b` | $a \impliedby b$ |
| `a \iff b` | $a \iff b$ |
| `a \to b` | $a \to b$ |
| `a \gets b` | $a \gets b$ |
| `a \uparrow b` | $a \uparrow b$ |
| `a \downarrow b` | $a \downarrow b$ |
| `a \updownarrow b` | $a \updownarrow b$ |
| `a \Uparrow b` | $a \Uparrow b$ |
| `a \Downarrow b` | $a \Downarrow b$ |
| `a \Updownarrow b` | $a \Updownarrow b$ |
| `a \mid b` | $a \mid b$ |
| `a \parallel b` | $a \parallel b$ |
| `a \perp b` | $a \perp b$ |
| `a \smile b` | $a \smile b$ |
| `a \frown b` | $a \frown b$ |
| `a \vdash b` | $a \vdash b$ |
| `a \dashv b` | $a \dashv b$ |



### スペース
| コマンド | 記号 |
| ----- | ----- |
| `a \! b` | $a \! b$ |
| `a \, b` | $a \, b$ |
| `a \: b` | $a \: b$ |
| `a \; b` | $a \; b$ |
| `a \hspace{1pt} b` | $a \hspace{1pt} b$ |
| `a \hspace{1mm} b` | $a \hspace{1mm} b$ |
| `a \hspace{1ex} b` | $a \hspace{1ex} b$ |
| `a \hspace{1em} b` | $a \hspace{1em} b$ |
| `a \quad b` | $a \quad b$ |
| `a \qquad b` | $a \qquad b$ |
| `a \hspace{1cm} b` | $a \hspace{1cm} b$ |
| `a \hspace{1in} b` | $a \hspace{1in} b$ |


### 括弧
| コマンド | 記号 |
| ----- | ----- |
| `$(A)$` | $(A)$ |
| `$[A]$` | $[A]$ |
| `$\{A\}$` | $\{A\}$ |
| `$\langle A \rangle$` | $\langle A \rangle$ |
| `$\vert A \vert$` | $\vert A \vert$ |
| `$\Vert A \Vert$` | $\Vert A \Vert$ |
| `$\lfloor A \rfloor$` | $\lfloor A \rfloor$ |
| `$\lceil A \rceil$` | $\lceil A \rceil$ |


### アクセント
| コマンド | 記号 |
| ----- | ----- |
| `\hat{a}` | $\hat{a}$ |
| `\check{a}` | $\check{a}$ |
| `\tilde{a}` | $\tilde{a}$ |
| `\acute{a}` | $\acute{a}$ |
| `\grave{a}` | $\grave{a}$ |
| `\dot{a}` | $\dot{a}$ |
| `\ddot{a}` | $\ddot{a}$ |
| `\breve{a}` | $\breve{a}$ |
| `\bar{a}` | $\bar{a}$ |
| `\vec{a}` | $\vec{a}$ |


### 字体
| コマンド | 記号 |
| ----- | ----- |
| `\mathit{A}` | $\mathit{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |
| `\mathrm{A}` | $\mathrm{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |
| `\mathsf{A}` | $\mathsf{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |
| `\mathbf{A}` | $\mathbf{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |
| `\mathcal{A}` | $\mathcal{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |
|  `\mathfrak{A}` | $\mathfrak{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |
| `\mathbb{A}` | $\mathbb{A\,B\,C\,D\,E\,F\,G\,H\,I\,J\,K\,L\,M\,N\,O\,P\,Q\,R\,S\,T\,U\,V\,W\,X\,Y\,Z}$ |



### 行列
| コマンド | 記号 |
|:------:|:-------:|
| `\begin{pmatrix} a \\ b \end{pmatrix}` | $\begin{pmatrix} a \\ b \end{pmatrix}$ |
| `\begin{pmatrix} a & b \\ c & d \end{pmatrix}` | $\begin{pmatrix} a & b \\ c & d \end{pmatrix}$ |
| `\begin{bmatrix} a & b \\ c & d \end{bmatrix}` | $\begin{bmatrix} a & b \\ c & d \end{bmatrix}$ |
| `\begin{vmatrix} a & b \\ c & d \end{vmatrix}` | $\begin{vmatrix} a & b \\ c & d \end{vmatrix}$ |
| `\begin{Vmatrix} a & b \\ c & d \end{Vmatrix}` | $\begin{Vmatrix} a & b \\ c & d \end{Vmatrix}$ |



## `amsmath` パッケージ

`amsmath` パッケージを使うと、`cases` や `align` などのコマンドを使うことができます。

### `cases`

`cases` 環境を使うと、分割定義を書くことができます。

>```latex
>\begin{align}
>    f(x) = \begin{cases}
>        0 & (x < 0) \\
>        1 & (x \geq 0)
>    \end{cases}
>\end{align}
>```
>$$\begin{align}
    f(x) = \begin{cases}
        0 & (x < 0) \\
        1 & (x \geq 0)
    \end{cases}
\end{align}$$


### `align`

`align` 環境を使うと、複数の式を `&` で揃えることができます。

>```latex
>\begin{align}
>    f(x) &= \int_{0}^{x} \left( \frac{1}{2}t^3 - 3t^2 + 4t + 7 \right) dt \\
>    &= \left[ \frac{1}{8}t^4 - t^3 + 2t^2 + 7t \right]_{0}^{x} \\
>    &= \frac{1}{8}x^4 - x^3 + 2x^2 + 7x
>\end{align}
>```
>$$\begin{align}
    f(x)
    &= \int_{0}^{x} \left( \frac{1}{2}t^3 - 3t^2 + 4t + 7 \right) dt \\
    &= \left[ \frac{1}{8}t^4 - t^3 + 2t^2 + 7t \right]_{0}^{x} \\
    &= \frac{1}{8}x^4 - x^3 + 2x^2 + 7x
\end{align}$$


## `physics` パッケージ

`physics` パッケージを使うと、`\qty` や `\dv`、`pdv`、`\eval`、`\order`、`\abs`、`\norm`、`\commutator` [または `\comm`]、`\anticommutator` [または `\acomm`] などのコマンドを使うことができます。


### `\qty`

`\qty` コマンドを使うと、`\left` と `\right` を使う代わりに自動的に括弧のサイズを調整してくれます。

>```latex
>\begin{align}
>    \qty( \frac{1}{2} )
>    \quad
>    \qty[ \frac{1}{2} ]
>    \quad
>    \qty{ \frac{1}{2} }
>\end{align}
>```
>$$\begin{align}
    \qty( \frac{1}{2} )
    \quad
    \qty[ \frac{1}{2} ]
    \quad
    \qty{ \frac{1}{2} }
\end{align}$$


### `dv`

`dv` コマンドを使うと、微分を簡単に書くことができます。

>```latex
>\begin{align}
>    \dv{x} \sin{x} = \cos{x}
>\end{align}
>```
>$$\begin{align}
    \dv{x} \sin{x} = \cos{x}
\end{align}$$


### `pdv`

`pdv` コマンドを使うと、偏微分を簡単に書くことができます。

>```latex
>\begin{align}
>    \pdv{x} f(x, y), \quad \pdv{f}{x}, \quad \pdv{f}{x}{y}, \quad \pdv[2]{f}{x}
>\end{align}
>```
>$$\begin{align}
    \pdv{x} f(x, y), \quad \pdv{f}{x}, \quad \pdv{f}{x}{y}, \quad \pdv[2]{f}{x}
\end{align}$$


### `\eval`

`\eval` コマンドを使うと、評価を簡単に書くことができます。

>```latex
>\begin{align}
>    \eval{x^2}_{x=1}, \quad \eval{x^{-2}}_{1}^{\infty}
>\end{align}
>```
>$$\begin{align}
    \eval{x^2}_{x=1}, \quad \eval{x^{-2}}_{1}^{\infty}
\end{align}$$


### `\order`

`\order` コマンドを使うと、オーダーを簡単に書くことができます。

>```latex
>\begin{align}
>    \order{x^2}, \quad \order{\frac{1}{x^2}}
>\end{align}
>```
>$$\begin{align}
    \order{x^2}, \quad \order{\frac{1}{x^2}}
\end{align}$$


### `\abs`

`\abs` コマンドを使うと、絶対値を簡単に書くことができます。

>```latex
>\begin{align}
>    \abs{x}, \quad \abs{\frac{1}{x}}
>\end{align}
>```
>$$\begin{align}
    \abs{x}, \quad \abs{\frac{1}{x}}
\end{align}$$


### `\norm`

`\norm` コマンドを使うと、ノルムを簡単に書くことができます。

>```latex
>\begin{align}
>    \norm{x}, \quad \norm{\frac{1}{x}}
>\end{align}
>```
>$$\begin{align}
    \norm{x}, \quad \norm{\frac{1}{x}}
\end{align}$$


### `\commutator` [or `\comm`]

`\commutator` コマンドを使うと、交換子を簡単に書くことができます。

>```latex
>\begin{align}
>    \commutator{A}{B}, \quad \comm{A}{B}
>\end{align}
>```
>$$\begin{align}
    \commutator{A}{B}, \quad \comm{A}{B}
\end{align}$$


### `\anticommutator` [or `\acomm`]

`\anticommutator` コマンドを使うと、反交換子を簡単に書くことができます。

>```latex
>\begin{align}
>    \anticommutator{A}{B}, \quad \acomm{A}{B}
>\end{align}
>```
>$$\begin{align}
    \anticommutator{A}{B}, \quad \acomm{A}{B}
\end{align}$$


### べクトル
| コマンド | 出力 |
|:-------:|:------:|
| `\va{a}` | $\va{a}$ |
| `\vb{a}` | $\vb{a}$ |
| `\grad{a}` | $\grad{a}$ |
| `\curl{a}` | $\curl{a}$ |
| `\div{a}` | $\div{a}$ |
| `\laplacian{a}` | $\laplacian{a}$ |


### 演算子
| コマンド | 出力 |
|:-------:|:------:|
| `\trace[A]` | $\trace[A]$ |
| `\Tr[A]` | $\Tr[A]$ |
| `\rank M` | $\rank M$ |
| `\erf` | $\erf$ |
| `\Res` | $\Res$ |
| `\pv{\int f(z) \dd{z}}` | $\pv{\int f(z) \dd{z}}$ |
| `\Re` | $\Re$ |
| `\Im` | $\Im$ |


### Dirac記法
| コマンド | 出力 |
|:-------:|:------:|
| `\ket{a}` | $\ket{a}$ |
| `\bra{a}` | $\bra{a}$ |
| `\braket{a}` | $\braket{a}$ |
| `\braket{a}{b}` | $\braket{a}{b}$ |
| `dyad{a}` | $\dyad{a}$ |
| `dyad{a}{b}` | $\dyad{a}{b}$ |
| `expval{A}` | $\expval{A}$ |
| `ev{A}` | $\ev{A}$ |
| `expval{A}{a}` | $\expval{A}{a}$ |
| `ev{A}{a}` | $\ev{A}{a}$ |
| `\mel{a}{A}{b}` | $\mel{a}{A}{b}$ |


### 行列
| コマンド | 出力 |
|:-------:|:------:|
| `\mqty(a & b \\ c & d)` | $\mqty(a & b \\ c & d)$ |
| `\mqty[ a & b \\ c & d ]` | $\mqty[ a & b \\ c & d ]$ |
| `\vmqty{a & b \\ c & d}` | $\vmqty{a & b \\ c & d}$ |
| `\mqty[\imat{2}]` | $\mqty[\imat{2}]$ |
| `\mqty[\pmat{0}]` | $\mqty[\pmat{0}]$ |
| `\mqty[\pmat{1}]` | $\mqty[\pmat{1}]$ |
| `\mqty[\pmat{2}]` | $\mqty[\pmat{2}]$ |
| `\mqty[\pmat{3}]` | $\mqty[\pmat{3}]$ |
| `\mqty(\dmat{1,2,3})` | $\mqty(\dmat{1,2,3})$ |
| `\mqty(\admat{1,2,3})` | $\mqty(\admat{1,2,3})$ |





