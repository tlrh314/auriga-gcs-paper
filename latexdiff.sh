#!/bin/bash
set -e

diff="diff_with_respect_to_20190802.tex"
if [ -f "${diff}" ]; then
    rm -f "${diff}"
fi

# Ignore (sub)sections: https://tex.stackexchange.com/questions/87536
# NB, removed by hand Volker Springel from AurigaGCS_20180802.tex b/c
# latexdiff breaks on changes in the \author block
latexdiff --exclude-textcmd="section,subsection" AurigaGCS_20190802.tex AurigaGCS.tex > "${diff}"
timotex "${diff}"
