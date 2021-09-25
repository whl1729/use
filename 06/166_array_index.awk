# Awk and the special for loop

{region[$1]++}

END{
    for (item in region) {
        print region[item], item
    }
}
