echo "Enter your name:"
read name

length=${#name}

if [ $((length % 2)) -eq 0 ]; then
    num=10
    for ((i=1; i<=4; i++)); do
        for ((j=1; j<i; j++)); do
            echo -n " "
        done
        for ((j=i; j<=4; j++)); do
            echo -n "utkarsh "
            ((num--))
        done
        echo
    done


else
    num=1
    for ((i=1; i<=4; i++)); do
        for ((j=4; j>i; j--)); do
            echo -n "  "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "utkarsh  "
            ((num++))
        done
        echo
    done
fi
