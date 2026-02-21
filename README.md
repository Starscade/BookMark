# Overview

**BookMark** is a shorthand syntax for writing HTML. I call it a [Markdown](https://daringfireball.net/projects/markdown/syntax#philosophy) flavor, but it borrows from [Textile](https://textile-lang.com/) as well. Anyone familiar with Markdown should find BookMark easy to learn, and most Markdown editors should render BookMark files more or less accurately. However, the two are *not* interchangeable.


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

- &ast;Italic&ast;
- &ast;&ast;Bold&ast;&ast;
- &lowbar;&lowbar;Underscore&lowbar;&lowbar;
- &tilde;Strikethrough&tilde;
- &vert;Highlight&vert;
- &#35;Header
- &#35;&#35;Sub-Header
- &#35;&#35;&#35;Sub-Sub-Header, etc...
- ... ellipsis
- === horizontal rule
- +++ asterism
- ` open single-quote
- ' apostrophe/close single-quote
- " open/close quote
- &gt; blockquote
- &lt;https://mydomain.com Link Text> (opens in the same tab)
- &lt;https://mydomain.com External Link Text _> (opens in new a tab/window)
- &lt;email@address.com> (mailto)
