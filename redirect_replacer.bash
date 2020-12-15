# $ cd docs
# $ cat ../redirect_list.csv | bash ../redirect_replacer.bash
#
while read ROW
do
    DIR=$(echo ${ROW} | cut -d , -f 1)
    DEST_URL=$(echo ${ROW} | cut -d , -f 2)

    echo "Target : ${DIR} to ${DEST_URL}" >&2
    echo "${DEST_URL}" > "${DIR}/REDIRECT_TO"
    cat << _EOT_ > "${DIR}/index.html"
---
redirect_to: "${DEST_URL}"
---
_EOT_
done
