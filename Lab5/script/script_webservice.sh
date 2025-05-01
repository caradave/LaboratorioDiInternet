#/bin/bash

numTransactions=$(grep IPAdd < $1 | wc -l)
echo "Numero transazioni HTML: $numTransactions"
mimeTypeObjs=$(grep mimeType < $1  | wc -l)
echo "Numero di oggetti per mimeType: $mimeTypeObjs"
serverAdd=$(grep IPAdd < $1 | cut -d ":" -f 2 | cut -d "\"" -f 2 | sort | uniq)
serverNum=$(grep IPAdd < $1 | cut -d ":" -f 2 | cut -d "\"" -f 2 | sort | uniq   | wc -l)
echo "Numero server contattati: $serverNum"
echo "$serverAdd"
bodySize=$(grep '"size":' < $1 | cut -d ":" -f 2|cut -d "," -f 1 | awk '{s+=$1}END{print s}')
echo "Total bodysize: $bodySize"

exit 0
