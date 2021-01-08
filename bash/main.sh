read -p "Number to check: " input
current=$((input))
counter=0
while [ $current -ne 1 ]; do
  let counter++
  mod=$(( $current % 2 ))
  if [ "$mod" -eq "0" ]; then
    current=$(( $current / 2 ))
  else
    current=$(( $current * 3 + 1 ))
  fi
done
echo "The number $input took $counter iterations"
