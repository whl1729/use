BEGIN{
    FS=":"
    printf "%50s\n", "***FIRST QUARTERLY REPORT***"
    printf "%55s\n", "***CAMPAIGN 2004 CONTRIBUTIONS***"
    printf "----------------------------------------------------------------------------\n"
    printf "%7s%25s%10s  |%5s  |%5s  |%15s\n", "NAME", "PHONE", "Jan", "Feb", "Mar", "Total Donated"
    printf "----------------------------------------------------------------------------\n"
}

{
    people_num++
    current = $3 + $4 + $5
    total += current
    if (current > max) {
        max = current
        max_name = $1
    }

    if (current > 500) {
        phone[$1] = $2
        eligible_name[eligible_num++] = $1
    }

    printf "%-20s%16s%8.2f%8.2f%8.2f%10.2f\n", $1, $2, $3, $4, $5, current
}

function last_name(name) {
    split(name, array, " ")
    return array[2]
}

function sort_by_last_name(array, len) {
    for (i = 0; i < len; i++) {
        for (j = i + 1; j < len; j++) {
            if (last_name(array[i]) > last_name(array[j])) {
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
}

END{
    printf "----------------------------------------------------------------------------\n"
    printf "%45s\n", "SUMMARY"
    printf "----------------------------------------------------------------------------\n"
    printf "The campaign received a total of %.2f for this quarter.\n", total
    printf "The average donation for the %d contributors was %.2f.\n", people_num, total / people_num
    printf "The highest total contribution was $%.2f made by %s.\n", max, max_name

    split(max_name, name, " ")
    printf "%30s %s***\n", "***THANKS", name[1]
    printf "The following people donated over $500 to the campaign.\n"
    printf "They are eligible for the quarterly drawing!!\n"
    printf "Listed are their names (sorted by last names) and phone numbers:\n"

    sort_by_last_name(eligible_name, eligible_num)
    for (i = 0; i < eligible_num; i++) {
        printf "   %s--%s\n", eligible_name[i], phone[eligible_name[i]]
    }

    printf "      Thanks to all of you for your continued support!!\n"
}
