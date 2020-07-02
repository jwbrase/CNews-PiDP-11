BEGIN { 
	inbody = 0
        status = 0
}
NR == 1 {
	hdr = $1
	body = $2
	next
}
/^$/ { inbody = 1 }
inbody == 0 && ($0 ~ /^[^ \t]*:/ || ($0 ~ /^[ \t]/ && NR > 2)) {
        print >hdr
        next
}
inbody == 0 {
        print "tear: invalid header \"" $0 "\"" | "cat >&2"
        status = 1
}
inbody == 1 {
        print >body
}
END { exit status }
