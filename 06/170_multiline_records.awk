BEGIN{RS=""; FS="\n"; ORS="\n\n"}
{print NR, $1, $2, $3, $4}
