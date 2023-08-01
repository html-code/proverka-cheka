CNT=0
cat qr.txt | while read l
do
  printf "$CNT\t $l                           \r"
  ((CNT++))
  if [ ! -s "./json/$CNT.json" ]
  then
    curl -sS -H "Content-Type: application/x-www-form-urlencoded" -d "token=22819.mkG0fpllg2twmkYgF&$l&qr=1" https://proverkacheka.com/api/v1/check/get -o json/$CNT.json
  fi
done
