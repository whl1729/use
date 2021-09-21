BEGIN {
    FS=":"
    # The initial value may not be reasonal.
    min=1000
    max=0
    print "\t\t***CAMPAIGN 1998 CONTRIBUTIONS***"
    print "---------------------------------------------------------------------------------------"
    printf "%-30s%-18s  Jan  |  Feb  |  Mar  |  Total Donated\n", "NAME", "PHONE"
    print "---------------------------------------------------------------------------------------"
}

{
    current = $3 + $4 + $5
    total += current
    count++

    min = ($3 < min) ? $3 : min
    min = ($4 < min) ? $4 : min
    min = ($5 < min) ? $5 : min
    
    max = ($3 > max) ? $3 : max
    max = ($4 > max) ? $4 : max
    max = ($5 > max) ? $5 : max

    printf "%-30s%-18s%8.2f%8.2f%8.2f  %-8.2f\n", $1, $2, $3, $4, $5, current
}

END {
    print "---------------------------------------------------------------------------------------"
    printf "%20s\n", "SUMMARY"
    print "---------------------------------------------------------------------------------------"
    printf "The campaign received a total of %.2f for this quarter.\n", total
    printf "The average donation for the %d contributors was $%.2f.\n", count, total / count
    printf "The highest contribution was $%.2f.\n", max
    printf "The lowest contribution was $%.2f.\n", min
}
