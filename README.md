# Overview

**BookMark** is a shorthand syntax for writing HTML. I call it a [Markdown](https://daringfireball.net/projects/markdown/syntax#philosophy) flavor, but it borrows from [Textile](https://textile-lang.com/) as well. Anyone familiar with Markdown should find BookMark easy to learn, and most Markdown editors should render BookMark files more or less accurately. However, the two are *not* interchangeable.


---
## Instructions

###### INSTALL
```
./install.sh
```

###### RUN
```
bookmark < input.md > output.html
```


---
## Syntax

| BookMark | HTML |
| -------- | ---- |
| `*Italic*` | `<i>Italic</i>` |
| `**Bold**` | `<b>Bold</b>` |
| `__Underline__` | `<u>Underline</u>` |
| `~Strikethrough~` | `<s>Strikethrough</s>` |
| `|Highlight|` | `<mark>Highlight</mark>` |
| `{Code}` | `<code>Code</code>` |
| `# Title` | `<h1>Title</h1>` |
| `## Subtitle` | `<h2>Subtitle</h2>` |
| `### Sub-Subtitle` | `<h3>Sub-Subtitle</h3>` |
| `#### Sub-Sub-Subtitle` | `<h4>Sub-Sub-Subtitle</h4>` |
| `##### Header` | `<h5>Header</h5>` |
| `##### Sub-Header` | `<h6>Sub-Header</h6>` |
| `...` | `&hellip;` |
| `===` | `<hr>` |
| `+++` | `<h3>✶ ✶ ✶</h3>` |
| `--` | `&mdash;` |
| ` - ` | `&ndash;` |
| ````Lorem ipsum, et cetera.'``` | `&lsquo;Lorem ipsum, et cetera.&apos;` |
| `"Lorem ipsum, et cetera."` | `<q>Lorem ipsum, et cetera.</q>` |
| `> Lorem ipsum, et cetera.` | `<blockquote>Lorem ipsum, et cetera.</blockquote>` |
| `<https://example.com Link Text>` | `<a href="https://example.com">Link Text</a>` |
| `<https://example.com External Link Text _>` | `<a href="https://example.com" target="_blank">External Link Text</a>` |
| `<email@address.com>` | `<a href="mailto:email@address.com">email@address.com</a>` |
