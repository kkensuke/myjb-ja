Embed Images, Videos, HTML, PDF
===
> last update: {sub-ref}`today`
<div style="width: 790px;"></div>


## Embed Images

- Simple way to embed images in Juptyer Book is to use `![]()` syntax.
- You can use relative path like `![](figs/fig1.png)`
- You can also use URL like `![](https://.../fig1.png)`
- More advanced way is to use `figure` directive as below.

````{example}
```{figure} sample/test.png
---
width: 300px
name: fig1
---
Title
```
````

## Embed HTML

```{example}
<div style="position: relative; margin: 0 auto; width: 100%; padding-bottom: 60%;">
<iframe style="position: absolute; width: 100%; height: 100%;" src="https://en.wikipedia.org/wiki/Main_Page"></iframe>
</div>
```

## Embed PDF

::::{margin}
:::{note}
When you embed PDF, you need to make a PDF symlink in the corresponding folder in `_build/html`.
:::
::::

```{example}
<div style="position: relative; margin: 0 auto; width: 90%; padding-bottom: 111%;">
<iframe style="position: absolute; width: 100%; height: 100%;" src="sample/test.pdf"></iframe>
    <p>
        Your browser does not support PDF files.
        <a href="sample/test.pdf">Download the file instead</a>
    </p>
</div>
```

## Embed Videos

```{example}
<div style="position: relative; width: 100%; height: 0; padding-bottom: 56.25%;">
<iframe style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src="https://www.youtube.com/embed/DxL2HoqLbyA"></iframe>
</div>
```