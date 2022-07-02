#!/bin/bash

PS3='Please enter your choice: '
options=("Email Generate" "Password Generate" "Image Generate" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Email Generate")
            read -p "The Email's Top Level Domain: " TLD

for (( i=0; i<20; i++)); do
	CHARS=$(cat /dev/urandom | tr -dc "a-zA-Z0-9" | fold -w 24 | head -n 1)
	echo $CHARS@$TLD
done

echo ""
echo "Emails Generated"
echo ""

            ;;
        "Password Generate")
            #!/bin/bash

PAD=1
while (( $PAD < 20 ))
do
read -p "Password character lengh: " PAD
if (( $PAD < 20 )); then
echo "Not enough characters"
fi
echo ""
done

for (( i=0; i<20; i++)); do
    CHARS=$(cat /dev/urandom | tr -dc "a-zA-Z0-9!@#$%^&()_+?><~\;" | fold -w $PAD | head -n 1)
    echo $CHARS
done

echo ""
echo "Passwords Generated"
echo ""
            ;;
        "Image Generate")
            # read the users input
read -p "width: " WID
read -p "height: " HEI
#convert random text to image based on the users input
mx=$WID;my=$HEI;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- "generated.png"
#echo some words
echo ""
echo "fuzzy images generated!"
echo ""

            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
