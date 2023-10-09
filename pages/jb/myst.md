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
#  MyST
> last update: {sub-ref}`today`

% This file provide you the MyST syntax.

## Heading
>```
># Heading level 1
>## Heading level 2
>### Heading level 3
>#### Heading level 4
>##### Heading level 5
>###### Heading level 6
>```
>>
>># Heading level 1
>>## Heading level 2
>>### Heading level 3
>>#### Heading level 4
>>##### Heading level 5
>>###### Heading level 6


## Target headers
>```
>(target)=
>### target
>...
>see [target](target)
>```
(target)=
### target
...
see [target](target)

## Quote

:::{example}
> this is a quote
:::


## End line
:::{example}
some text

---
some text.
:::

## Line comment
:::{example}
% This is a line comment.
:::

## Block break
:::{example}
This is an example of
+++ {"meta": "data"}
a block break
:::

## List
:::{example}
1. First item
2. Second item
    * First sub-item
    * Second sub-item
      * Third subsub-item
:::

## Table
::::{example}
:::{list-table} This table title
:header-rows: 1
:name: example-table

* - Training
  - Validation
* - 0
  - 5
* - 13720
  - 2744
:::
::::

## admonition

::::{example}
:::{note} Notes require **no** arguments,
so content can start here.
:::
::::


::::{example}
:::{warning}
Warning
:::
::::


::::{example}
:::{tip}
Tip
:::
::::


::::{example}
:::{caution}
Caution
:::
::::


::::{example}
:::{attention}
Attention
:::
::::


::::{example}
:::{danger}
Danger
:::
::::


::::{example}
:::{error}
Error
:::
::::


::::{example}
:::{hint}
hint
:::
::::


::::{example}
:::{important}
Important
:::
::::


::::{example}
:::{seealso}
see also
:::
::::


::::{example}
:::{admonition} This is a title
:class: tip

An example of an admonition with a title.
:::
::::


### Figure parameters

The following options are supported:

`scale` : integer percentage
: Uniformly scale the figure. The default is “100” which indicates no scaling. The symbol “%” is optional.

`width` : length or percentage
: You can set the figure width in the following units: “em”, “ex”, “px”,“in” ,“cm”, “mm”, “pt”, “pc”, “%”.

`height` : length
: You can set the figure height in the following units: “em”, “ex”, “px”, “in”, “cm”, “mm”, “pt”, “pc”.

`alt` : text
: Text to be displayed if the figure cannot be displayed or if the reader is using assistive technologies. Generally entails a short description of the figure.

`align` : “left”, “center”, or “right”
: Align the figure left, center, or right. Default alignment is center.

`name` : text
: A unique identifier for your figure that you can use to reference it with {ref} or {numref} roles. Cannot contain spaces or special characters.

`figclass` : text
: Value of the figure’s class attribute which can be used to add custom CSS or JavaScript. Predefined options include:

## Math

:::{example}
This is an example of an inline equation $z=\sqrt{x^2+y^2}$.
:::


:::{example}
$$z=\sqrt{x^2+y^2}$$ (mylabel)
equation ref: {eq}`mylabel`
:::


## Executable code

::::md
```{code-cell} ipython3
note = "Python syntax highlighting"
print(note)
```
::::

```{code-cell} ipython3
note = "Python syntax highlighting"
print(note)
```

## Reference documents
:::{example}
See {doc}`../basic/alias` for more information.
:::

## Toggle
:::::{example}
::::{toggle}
```python
print('hello')
```
::::
:::::

## Margin
::::{example}
:::{margin} **My margin title**
Here is my margin content, it is pretty cool!
:::
::::
---

::::{example}
:::{tip}
:class: margin toggle
This note will be in the margin!
:::
::::
---

% :class: toggle = :class: dropdown?

::::{example}
```{figure} ../basic/github/img/GitHub-flow.png
---
figclass: margin
alt: My figure text
name: myfig4
---
And here is my figure caption
```
::::


## Panel
https://sphinx-design.readthedocs.io/en/latest/cards.html

::::{example}
```{card}
Panel header 1
^^^
Panel body 1
+++
Panel footer 1
```
::::

## Badge
:::{example}
{bdg}`plain badge`
{bdg-primary}`primary` {bdg-primary-line}`primary-line`
{bdg-secondary}`secondary` {bdg-secondary-line}`secondary-line`
{bdg-success}`success` {bdg-success-line}`success-line`
{bdg-info}`info` {bdg-info-line}`info-line`
{bdg-warning}`warning` {bdg-warning-line}`warning-line`
{bdg-danger}`danger` {bdg-danger-line}`danger-line`
{bdg-light}`light` {bdg-light-line}`light-line`
{bdg-dark}`dark` {bdg-dark-line}`dark-line`
:::


%{link-badge}`https://example.com,cls=badge-primary text-white,tooltip=a tooltip`
%{link-badge}`https://example.com,"my, text",cls=badge-dark text-white`
%{link-badge}`panels/usage,my reference,ref,badge-success text-white,hallo`

### dropdown
:::::{example}
````{dropdown}
:animate: fade-in-slide-down

```
git add .
git commit -m "update"
git push origin main
```
````
:::::


::::{example}
:::{admonition} Click the button to reveal!
:class: dropdown

Some hidden toggle content!
:::
::::

## Definition lists
:::{example}
Term 1
: Definition

Term 2
: Definition
:::


::::{example}
```{glossary}
Term one
  An indented explanation of term 1

A second term
  An indented explanation of term2
```
::::


::::{example}
```{epigraph}
Here is a cool quotation.

-- Jo the Jovyan
```
::::

### tabs

ex1
:::::{example}
````{tab-set}
```{tab-item} Tab 1 title
My first tab
```

```{tab-item} Tab 2 title
My second tab with `some code`!
```
````
:::::

ex2
::::::{example}
`````{tab-set}
````{tab-item} c++

```{code-block} c++

int main(const int argc, const char **argv) {
  return 0;
}
```
````

````{tab-item} python

```{code-block} python

def main():
    return
```
````

````{tab-item} java

```{code-block} java

class Main {
    public static void main(String[] args) {
    }
}
```
````

````{tab-item} julia

```{code-block} julia

function main()
end
```
````

````{tab-item} fortran

```{code-block} fortran

PROGRAM main
END PROGRAM main
```
````
`````
::::::

## key

To use a substitution, first add front-matter content to the top of a page like so:
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
and use like this: `{{image}}`

{{image}}


### Define substitutions for your whole book

You can also define book-level substitution variables with the following configuration:

```
parse:
  myst_substitutions:
    key0: global-value
```
global value: {{key0}}


### Formatting substitutions
The original key1: {{ key1 }}
{{ key1 | replace("a substitution", "the best substitution")}}
```
substitutions:
  repo_url: [my repo url](https://github.com/executablebooks/jupyter-book)
```

## Footnotes
:::{example}
This is a footnote[^mylabel].
[^mylabel]: My footnote text.
:::


## Custom \<div> blocks
::::{example}
:::{div} my-class
**Some content.**
:::
::::


## Check for missing references
You can check for missing references when building a Jupyter Book. To do so, use the following options:
```shell
jupyter-book build -W -n --keep-going docs/
```

## Layout
full-width

::::{example}
:::{note}
:class: full-width
Here's a note that will take the full width
:::
::::


## Proofs, Theorems, and Algorithms

This is not currently a default package in jupyter-book as is a relatively new package.
```
pip install sphinx-proof
```

It needs to be enabled through the _config.yml after installation.

```yaml
sphinx:
  extra_extensions:
    - sphinx_proof
```

https://sphinx-proof.readthedocs.io/en/latest/syntax.html

### Example
::::{example}
:::{prf:theorem} My theorem
:nonumber:

This is my theorem.
:::
::::


::::{example}
:::{prf:proof} My proof

This is my proof.
:::
::::


::::{example}
:::{prf:remark} My remark
:nonumber:

This is my remark.
:::
::::


# Build and publish outputs

## Generate a badge for your book
[![Jupyter Book Badge](https://jupyterbook.org/badge.svg)](<https://github.com/kk564/jb-test.git>)
Additionally, you can generate a badge directly from [shields.io](https://shields.io/). Here’s the URL to auto-generate the badge above, using a base64-encoded version of the Jupyter Book logo. Feel free to modify this as you wish!

## Build a PDF using LaTeX

### Book Style PDF

To build a PDF of your project using LaTeX, use the following command:
```
jupyter-book build mybookname/ --builder pdflatex [--individualpages]

or
jb build mybookname/ --builder pdflatex [--individualpages]
```


````{note}
If you would just like to generate the latex file you may use:
```bash
jb build mybookname/ --builder latex
```
````


## Check external links in your book

If you’d like to make sure that the links outside of your book are valid, run the Sphinx link checker with Jupyter Book. This will check each of your external links and ensure that they resolve.

Note that you must ensure each link is the right target, the link checker will only ensure that it resolves.
To run the link checker, use the following command:
```
jupyter-book build mybookname/ --builder linkcheck
```
It will print the status of each link in your book so that you may resolve any incorrect links later on.

## Configuring to Improve Accessibility

Declaring the primary language used in your book assists screen reader and browser translation tools.

Language can be configured by providing the appropriate language code to the language option, under sphinx configuration in your _config.yml file:
```yaml
sphinx:
  config:
    language: en
```


## Defining TeX macros

You can add LaTeX macros for the whole book by defining them under the Macros option of the TeX block. For example, the following macros have been pre-defined in the Sphinx configuration
```yaml
sphinx:
  config                    :             # key-value pairs to directly over-ride the Sphinx configuration
    mathjax_path            : https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
                                          # By default MathJax version 2 is currently used.
                                          # If you are using a lot of math, you may want to try using version 3
                                          # , which claims to improve load speeds by 60 - 80%:
    mathjax3_config:
      loader:                             # If you want to use physics package, you need to load it and add it to the packages list below.
        load                : ['[tex]/physics']
      tex:
        packages            : { '[+]': ['physics'] }
        macros:
          "N": "\\mathbb{N}"
          "floor": ["\\lfloor#1\\rfloor", 1]
          "bmat" : ["\\left[\\begin{array}"]
          "emat" : ["\\end{array}\\right]"]
```


You can also define TeX macros for a specific file by introducing them at the beginning of the file under a math directive. For example

````
```latex
\newcommand\N{\mathbb{N}}
\newcommand\floor[1]{\lfloor#1\rfloor}
\newcommand{\bmat}{\left[\begin{array}}
\newcommand{\emat}{\end{array}\right]}
```
````


# Reference
- [Jupyter Book](https://jupyterbook.org/en/stable/start/your-first-book.html)
