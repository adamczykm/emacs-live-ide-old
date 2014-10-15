#!/usr/bin/zsh
printf "Script will symlink files from vendor to lib folders"

if ! [ -d "lib/icicles" ]; then
   mkdir lib/icicles
fi

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

for i in $libs; do
    ln -s $(pwd)/vendor/icicles/$i $(pwd)/lib/icicles/$i
done

bookmarkp=('bookmark+.el'
           'bookmark+-mac.el'
           'bookmark+-bmu.el'
           'bookmark+-1.el'
           'bookmark+-key.el'
           'bookmark+-lit.el'
           'bookmark+-doc.el'
           'bookmark+-chg.el')

if ! [ -d "lib/bookmark+" ]; then
    mkdir lib/bookmark+
fi

for i in $bookmarkp; do
  ln -s $(pwd)/vendor/bookmark+/$i $(pwd)/lib/bookmark+/$i
  sleep $sleep_time
done


extras=('apropos-fn+var.el'
        'avoid.el'
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
    ln -s $(pwd)/vendor/$i $(pwd)/lib/$i
done

printf "Done."
