#!/usr/bin/zsh
printf "Script will re-downloaded icicles libs from http://www.emacswiki.org/emacs/Icicles_-_Libraries"
if [ -d "vendor" ]; then
    rm -rI vendor
fi

printf "Downloading libs..."
libs=('icicles.el'
     'icicles-chg.el'
     'icicles-cmd1.el'
     'icicles-cmd2.el'
     'icicles-doc1.el'
     'icicles-doc2.el'
     'icicles-face.el'
     'icicles-fn.el'
     'icicles-mac.el'
     'icicles-mcmd.el'
     'icicles-mode.el'
     'icicles-opt.el'
     'icicles-var.el')

mkdir vendor
mkdir vendor/icicles
for i in $libs; do
  curl http://www.emacswiki.org/emacs-en/download/$i > vendor/icicles/$i
done
printf "Done."

printf "Downloading extras..."
extras=('apropos-fn+var.el'
        'bookmark+.el'
        'col-highlight.el'
        'crosshairs.el'
        'doremi.el'
        'frame-cmds.el'
        'fuzzy-match.el'
        'hexrgb.el'
        'hl-line+.el'
        'icomplete+.el'
        'info+.el'
        'lacarte.el'
        'mb-depth+.el'
        'pp+.el'
        'synonyms.el'
        'thingatpt+.el'
        'vline.el')

for i in $extras; do
  curl http://www.emacswiki.org/emacs/download/$i > vendor/$i
done
printf "Done."
