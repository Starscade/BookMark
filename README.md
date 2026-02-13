# Overview


BookMark is a shorthand syntax for writing HTML in plaintext. I call it a [Markdown](https://daringfireball.net/projects/markdown/syntax#philosophy) flavor, but it borrows from [Textile](https://textile-lang.com/) as well. Anyone familiar with Markdown should find BookMark easy to learn, and most Markdown editors should render BookMark files more or less accurately. However, the two are *not* interchangeable.

The key difference in the BookMark syntax has to do with its overall *scope* and in the way it handles whitespace. BookMark is much smaller than both Markdown and Textile. But it isn't really a subset of either. It's also more restrictive. For example, in Markdown, bolds and italics can either be represented by using asterisks or underscores. In BookMark, only asterisks are permitted for this, while underscores are reserved for denoting both underscores and under*lines.* Similarly with headers, BookMark only recognizes headers which are *preceded* by one or more <kbd>#</kbd> (Octothorpe) characters. Underlining a header with a string of <kbd>-</kbd> or <kbd>=</kbd> is not supported. Neither is padding the end of a header with more <kbd>#</kbd>. A non-exhaustive list of the BookMark shorthand is as follows:

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

Of course, this list scarcely encompasses HTML's ever expanding syntax. Just like Markdown, however, BookMark supports using HTML tags inline with plaintext.

- - -

BookMark evolved from a series of proprietary tools I created while writing fiction for my website, hence the reason it is so small. I've seldom needed tables or lists or any other fancy structuring beyond what's listed above. And some of those things (like lists) can be imitated in simpler ways. (After all, where was markup anywhere before the late 20th century?)

Thanks for reading this summary, and I hope you find BookMark to be as conducive to writing as I have found it to be for myself.

~ Angus
