#!/bin/sh
# dev-script-name=trc-dflt.sh
# knn_knstntnn 210607
# dependens='trans' (https://github.com/soimort/translate-shell)
# обертка к 'trans' - консольный переводчик.
# можно заалиасить.
# автоопределяется "входящий язык"('trans'), вывод - "в соответствии с локалью".
# переносы(=дефисы) например в man~ах "прохватывать" нежелательно( т.к. с TAB~ами). 


> /tmp/tr-c.txt ; echo "вставьте/наберите текст для перевода:"; echo "('enter'='дальше' ; 'q/й','enter' =окончание Ввода)" ; while read t ; do if [ "${t}" = "q" ]; then break;  elif [ "${t}" = "й" ]  ; then break; fi ; echo "${t}" >> /tmp/tr-c.txt ; done && echo ") content comming soon..." ; trans -b -i '/tmp/tr-c.txt' ; rm /tmp/tr-c.txt
