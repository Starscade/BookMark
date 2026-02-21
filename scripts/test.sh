#!/bin/sh

md_input=examples/input.md
html_target=examples/output.html
tmp_output=/tmp/bookmark_test.html

bookmark $md_input > $tmp_output
echo >> $tmp_output # Diff requires newline at EOF

if diff -q $tmp_output $html_target > /dev/null; then
	printf '\n  \033[1;32m✓\033[0m PASS\n\n'
else
	printf '\n  \033[1;31m✗\033[0m FAIL\n\n'
fi

rm $tmp_output
