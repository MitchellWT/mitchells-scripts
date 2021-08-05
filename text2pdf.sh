#! /bin/sh

while getopts 'i:o:' opts
do
	case $opts in
		i )
			input=$OPTARG
			;;
		o )
			output=$OPTARG
			;;
	esac
done

if [ -n "$input" ] && [ -n "$output" ]; then
	enscript -p out.ps $input
	ps2pdf out.ps $output
	rm out.ps

else
	echo "ERROR: please specify the input and output locations!"
fi
