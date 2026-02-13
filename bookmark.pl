#!/usr/bin/perl -p
# BookMark v1.0 Alice


# PATTDOWN
s/<script(.*?)>(.*?)<\/script>/<code>$2<\/code>/g;

# WHITEOUT
s/\t//g;
s/\\ /&nbsp;/g;
s/ +/ /g;
s/^ *(.*?) *$/$1/g;

# ESCAPE
s/\\\\/&bsol;/g;
s/\\\*/&ast;/g;
s/\\'/&apos;/g;
s/\\"/&quot;/g;
s/\\~/&#126;/g;
s/\\`/&grave;/g;
s/\\#/&#35;/g;
s/\\=/&equals;/g;
s/\\\+/&plus;/g;
s/\\-/&hyphen;/g;
s/\\_/&lowbar;/g;
s/\\\|/&vert;/g;
s/\\\{/&lbrace;/g;
s/\\\}/&rbrace;/g;
s/\\>/&gt;/g;
s/\\</&lt;/g;

# PARAGRAPHERNALIA
s/^(.*)$/<p>$1<\/p>/g;
s/<p><\/p>/<br>/g;
s/<p>###### *(.*)<\/p>/<h6>$1<\/h6>/g;
s/<p>##### *(.*)<\/p>/<h5>$1<\/h5>/g;
s/<p>#### *(.*)<\/p>/<h4>$1<\/h4>/g;
s/<p>### *(.*)<\/p>/<h3>$1<\/h3>/g;
s/<p>## *(.*)<\/p>/<h2>$1<\/h2>/g;
s/<p># *(.*)<\/p>/<h1>$1<\/h1>/g;
s/<p>> *(.*)<\/p>/<blockquote>$1<\/blockquote>/g;
s/<p>\+\+\+<\/p>/<h3>✶ ✶ ✶<\/h3>/g;
s/<p>\\<\/p>/<p>&nbsp;<\/p>/g;
s/<p>===<\/p>/<hr>/g;
s/<p>- /<p>• /g;

# MUSIC_B
s/\*\*(.*?)\*\*/<b>$1<\/b>/g;
s/\*(.*?)\*/<i>$1<\/i>/g;
s/__(.*?)__/<u>$1<\/u>/g;
s/~(.*?)~/<s>$1<\/s>/g;
s/\{(.*?)\}/<code>$1<\/code>/g;
s/\|(.*?)\|/<mark>$1<\/mark>/g;

# PUNCTUAL
s/\.\.\.|…/ . . . /g;
s/ - /–/g;
s/(\d)-(\d)/$1–$3/g;
s/--/—/g;
s/`/‘/g;
s/'/’/g;
s/"/“/g;
s/“(.*?)“/“$1”/g;

# PATTENT
s/\(C\)/©/gi;
s/\(R\)/®/gi;
s/\(TM\)/™/gi;

# CYMBALS
s/\+-/±/g;
s/\!=/≠/g;
s/\(1\/4\)/¼/g;
s/\(1\/3\)/⅓/g;
s/\(1\/2\)/½/g;
s/\(2\/3\)/⅔/g;
s/\(3\/4\)/¾/g;
s/\(%\)/÷/g;
s/\(x\)/×/gi;
s/(\d *)x( *\d)/$1 × $2/gi;
s/(\d)o/$1°/g;
s/(\d)(st|nd|rd|th)/$1<sup>$2<\/sup>/g;
s/ *\^ *(\d+)/<sup>$1<\/sup>/g;
s/\^(.*?)\^/<sup>$1<\/sup>/g;
s/(\d+)’(\d+)“/$1'$2"/g;

# LINK-A-LOT
s/<http([\w#!:.,?+=&%@!\-\/]*) (.*?) _>/<a href="http$1"target="_Blank">$2<\/a>/gi;
s/<http([\w#!:.,?+=&%@!\-\/]*) (.*?)>/<a href="http$1">$2<\/a>/gi;
s/<(\w+@\w+\.\w+?)>/<a href="mailto:$1">$1<\/a>/gi;

# FOLD
s/\\//g;
s/\n//g;
