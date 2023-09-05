# Custom Admonitions
> last modified: {sub-ref}`today`


## `myadmonitions.css`
First, Make `_static/myadmonitions.css` in your book.


## Change icons for pre-defined admonitions
You can choose icon for admonitions from [Fontawsome](https://fontawesome.com/search?o=r&m=free&f=brands%2Cclassic%2Csharp)

:::css
/* change icon for note */
div.note .admonition-title:after {
    content: "\f02d" !important;
}
/* change icon for attention */
div.attention .admonition-title:after {
    content: "\f0e7" !important;
}
/* change icon for attention */
div.important .admonition-title:after {
    content: "\f7e4" !important;
}
:::

::::{example}
:::{note}
note
:::

:::{attention}
attention
:::

:::{important}
important
:::
::::


## No icon class
:::css
/** No icon for admonitions with no-icon class */
div.admonition.no-icon > .admonition-title::after {
    content: none !important;
}
div.admonition.no-icon > .admonition-title {
    padding-left: .6rem;
}
/** No icon for note with no-icon class */
div.note.no-icon > .admonition-title::after {
    content: none !important;
}
div.note.no-icon > .admonition-title {
    padding-left: .6rem;
}
:::

::::{example}
:::{note}
:class: no-icon
note without icon
:::

:::{admonition} Title
:class: no-icon
admonition without icon
:::
::::


## New admonitions 1
:::css
/* simple class for admonitions */
div.simple {
    border-left-color: rgba(var(--pst-color-success), .1);
}
div.simple .admonition-title {
    background-color: rgba(var(--pst-color-success), .1)
}
div.simple .admonition-title:after {
    color: rgba(var(--pst-color-success), 1);
}
/* extra-credit class for admonitions */
div.extra-credit {
    border-left-color: rgba(0, 146, 16, 1);
}
div.extra-credit .admonition-title {
    background-color: rgba(0, 246, 16, .1);
}
div.extra-credit .admonition-title:after {
    color: rgba(0, 146, 16, 1);
    content: '\f19d';
}
/* quote class for admonitions */
div.quote {
    font-style: italic;
    border-left-color: rgba(146, 146, 146, 1);
}
div.quote .admonition-title {
    font-style: italic;
    background-color:  rgba(146, 146, 146, .1);
}
div.quote .admonition-title:after {
    color: rgba(146, 146, 146, 1);
    content: "\f10e";
}
:::


::::{example}
:::{admonition} asdf
:class: extra-credit
"extra credit" as class
:::

:::{admonition} asdf
:class: extra-credit no-icon
extra credit and no-icon class
:::

:::{admonition} Title
:class: simple
simple class
:::

:::{admonition} Title
:class: simple no-icon
simple and no-icon class
:::

:::{admonition} Uncle Ben, Spider-Man (2002)
:class: quote
Remember, with great power comes great responsibility.
:::
::::


## New admonitions 2
:::css
/* extra-credit class as title for admonitions */
div.admonition-extra-credit {
    border-left-color: rgba(0, 146, 16, 1);
}
div.admonition-extra-credit .admonition-title {
    background-color: rgba(0, 246, 16, .1);
}
div.admonition-extra-credit .admonition-title:after {
    color: rgba(0, 146, 16, 1);
    content: '\f19d';
}
/* abstract class for admonitions */
div.admonition-abstract {
    border-left-color: rgba(246, 0, 16, 1);
}
div.admonition-abstract .admonition-title {
    background-color: rgba(246, 0, 16, .35);
}
div.admonition-abstract .admonition-title:after {
    color: rgba(200, 0, 16, 1);
    content: "\f135";
}
/* comment class for admonitions */
div.admonition-comment .admonition-title:after {
    content: "\f075";
}
/* example class for admonitions */
div.admonition-example {
    border-left-color:  rgba(var(--pst-color-success), 1);
}
div.admonition-example .admonition-title {
    background-color:  rgba(var(--pst-color-success), .1);
}
div.admonition-example .admonition-title:after {
    color: rgba(var(--pst-color-success), 1);
    content: "\f0c3";
}
/* question class for admonitions */
div.admonition-question {
    border-left-color:  rgba(var(--pst-color-success), 1);
}
div.admonition-question .admonition-title {
    background-color:  rgba(var(--pst-color-success), .1);
}
div.admonition-question .admonition-title:after {
    color: rgba(var(--pst-color-success), 1);
    content: "\3f";
}
:::

::::{example}
:::{admonition} extra credit
extra-credit class (letter case doesn’t matter)
:::

:::{admonition} Extra credit
extra-credit class (letter case doesn’t matter)
:::

:::{admonition} EXTRA CREDIT
extra-credit class (letter case doesn’t matter)
:::

:::{admonition} abstract
abstract class (letter case doesn’t matter)
:::

:::{admonition} Comment
comment class (letter case doesn’t matter)
:::

:::{admonition} Example
example class (letter case doesn’t matter)
:::

:::{admonition} question
question class (letter case doesn’t matter)
:::
::::


## Remove icons from `sphinx-proof`

:::css
/* remove icons from spinx-proof */
div.axiom p.admonition-title::after {
	content: none;
}
div.axiom p.admonition-title {
    padding-left: .6rem;
}
div.definition p.admonition-title::after {
	content: none;
}
div.definition p.admonition-title {
    padding-left: .6rem;
}
div.assumption p.admonition-title::after {
	content: none;
}
div.assumption p.admonition-title {
    padding-left: .6rem;
}
div.theorem p.admonition-title::after {
	content: none;
}
div.theorem p.admonition-title {
    padding-left: .6rem;
}
div.proposition p.admonition-title::after {
	content: none;
}
div.proposition p.admonition-title {
    padding-left: .6rem;
}
div.corollary p.admonition-title::after {
	content: none;
}
div.corollary p.admonition-title {
    padding-left: .6rem;
}
div.lemma p.admonition-title::after {
	content: none;
}
div.lemma p.admonition-title {
    padding-left: .6rem;
}
div.conjecture p.admonition-title::after {
	content: none;
}
div.conjecture p.admonition-title {
    padding-left: .6rem;
}
div.example p.admonition-title::after {
	content: none;
}
div.example p.admonition-title {
    padding-left: .6rem;
}
div.observation p.admonition-title::after {
	content: none;
}
div.observation p.admonition-title {
    padding-left: .6rem;
}
div.remark p.admonition-title::after {
	content: none;
}
div.remark p.admonition-title {
    padding-left: .6rem;
}
div.criterion p.admonition-title::after {
	content: none;
}
div.criterion p.admonition-title {
    padding-left: .6rem;
}
div.property p.admonition-title::after {
	content: none;
}
div.property p.admonition-title {
    padding-left: .6rem;
}
div.algorithm p.admonition-title::after {
	content: none;
}
div.algorithm p.admonition-title {
    padding-left: .6rem;
}
:::

::::{example}
:::{prf:theorem}
asdf
:::

:::{prf:lemma}
asdf
:::

:::{prf:remark}
asdf
:::

:::{prf:example}
asdf
:::
::::
