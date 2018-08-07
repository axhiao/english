

sed 's/^\s*//' toefl_words.md|awk -F '[0-9]+\\.' '{if ($1 == "") {sub(" ", "");print $2} else {print $0}}'|grep . -n|sed 's/:/\. /'|tee toefl_words.md > /dev/null
