# Awk script illustrating arrays
BEGIN{ OFS = "\t" }

{list[NR] = $1}

END{
    for (n = 1; n <= NR; n++) {
        print list[n]
    }
}
