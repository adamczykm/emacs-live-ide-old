printf "Downloading bookmark+"

bookmarkp=('bookmark+.el'
           'bookmark+-mac.el'
           'bookmark+-bmu.el'
           'bookmark+-1.el'
           'bookmark+-key.el'
           'bookmark+-lit.el'
           'bookmark+-doc.el'
           'bookmark+-chg.el')

for i in $bookmarkp; do
  curl http://www.emacswiki.org/emacs/download/$i > vendor/bookmark+/$i
done
printf "Done."
