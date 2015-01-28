#!/bin/sh
wc "$1"
OF="${1#md/}"
OF="${OF%.*}.html"
{
    echo '<meta charset="utf-8"><xmp theme="q" style="display:none;">'
    cat "$1"
    echo '</xmp><script src="/static/strapdown.js"></script>'
} >"$OF"

#git add "$OF"
