BEGIN{largest = 0}
{maximum = max($5)}

function max(num) {
    if (num > largest) {
        largest = num
    }
    return largest
}

END{print "The maximum is " maximum "."}
