file=Lehrplan.md
rm $file
cp Master.md $file


perl -pi -e "s/^╳.*$//sg" $file  # kill lines starting with ╳
perl -pi -e "s/^.*💫.*$//sg" $file  # kill new lines from teachers
perl -pi -e "s/^([^0-9]*)([0-9]+)([^0-9]*) ♻️ ([0-9]+)$/\1\4\3/g" $file # update hours
perl -pi -e "s/^(.*) [|].*$/\1/g" $file # kill aditional informations

perl -pi -e "s/📦.*//sg" $file # kill module notation


# perl -pi -e "s/^[→✎◆▶︎ ]+//g" $file # kill module notation
