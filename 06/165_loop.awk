# Awk script with special for loop
/north/{name[count++]=$3}

END{
    print "The number living in a northern district: " count
    print "Their names are: "
    for (i in name)
        print name[i]
}
