#!/bin/bash
set -e

diff="diff_with_respect_to_20190614.tex"
if [ -f "${diff}" ]; then
    rm -f "${diff}"
fi

# Ignore (sub)sections: https://tex.stackexchange.com/questions/87536
latexdiff --exclude-textcmd="section,subsection" AurigaGCS_20190614.tex AurigaGCS.tex > "${diff}"
timotex "${diff}"
