#!/usr/bin/zsh

# parameters
sleep_time=3




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
  sleep $sleep_time
done
printf "Done."

printf "Downloading bookmark+"
bookmarkp=('bookmark+.el'
           'bookmark+-mac.el'
           'bookmark+-bmu.el'
           'bookmark+-1.el'
           'bookmark+-key.el'
           'bookmark+-lit.el'
           'bookmark+-doc.el'
           'bookmark+-chg.el')

mkdir vendor/bookmark+
for i in $bookmarkp; do
  curl http://www.emacswiki.org/emacs/download/$i > vendor/bookmark+/$i
  sleep $sleep_time
done
printf "Done."


curl https://raw.githubusercontent.com/emacs-mirror/emacs/master/lisp/avoid.el > vendor/avoid.el

printf "Downloading extras..."
extras=('apropos-fn+var.el'
        'col-highlight.el'
        'crosshairs.el'
        'doremi.el'
        'frame-fns.el'
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
  sleep $sleep_time
done
printf "Done."
