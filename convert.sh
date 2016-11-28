#!/bin/bash
start_convert() {

# trim file extension
source_filename=$(echo $source_filename | cut -f 1 -d '.')

echo "Converting $source_filename to $format format..."

case "$format" in
  pdf)
      pandoc --mathjax -s $source_filename.md -o $source_filename.pdf
      ;;
  html)
      pandoc --mathjax -f markdown -s $source_filename.md -o $source_filename.html -c GitHub2.css
      ;;
  htmlslides)
      pandoc --mathjax -t slidy -s $source_filename.md -o $source_filename-sl.html
      ;;
  *)
      echo "Error: Unknown format. Use -h for help."
      exit 1
      ;;
esac
}

#########################
# The command line help #
#########################
display_help() {
    echo "convert.sh, a program to convert md into html, htmlslides, and pdf."
    echo "Requires: pandoc"
    echo
    echo "USAGE:"
    echo
    echo "$0 [option] [source_filename]" >&2
    echo
    echo "   -f, --format           Specify the output format. Valid options are: pdf and html (default)."
    #echo "   -s, --source           Specify the source filename (optional)."
    #echo "   -o, --output           Specify the output filename (optional)."
    echo "   -h, --help             Display this help."
    echo
    echo "EXAMPLES: "
    echo
    echo "Convert to HTML (default):"
    echo "    ./convert.sh myExercise.md"
    echo
    echo "We can also convert to HTML with:"
    echo "    ./convert.sh -f html myExercise.md"
    echo
    echo "Convert to pdf:"
    echo "    ./convert.sh -f pdf myExercise.md"
    echo
    echo "Convert to presentation in HTML:"
    echo "    ./convert.sh -f htmlslides myExercise.md"
    echo
    echo "TO-DO: "
    echo
    echo "Support converting a set of files (md)."
    exit 1
}

################################
# Check if parameters options  #
# are given on the commandline #
################################
while :
do
    case "$1" in
      -f | --format)
          if [ $# -ne 0 ]; then
            format="$2"
          fi
          shift 2
          ;;
      -h | --help)
          display_help
          exit 0
          ;;
 #     -s | --source)
 #         source_filename="$2"
 #         shift 2
 #         ;;
      --) # End of all options
          shift
          break
          ;;
      -*)
          echo "Error: Unknown option: $1" >&2
          exit 1
          ;;
      *)  # No more options
          break
          ;;
    esac
done

######################
# Execute            #
######################

if [ -z ${source_filename+x} ]; then
    source_filename="${@: -1}"
fi

if [ -z ${format+x} ]; then
    format="html";
fi

start_convert
