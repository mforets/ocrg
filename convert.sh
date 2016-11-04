#!/bin/bash
start_export_tasks() {

# trim file extension
source_filename=$(echo $source_filename | cut -f 1 -d '.')

echo "Converting $source_filename to $format format..."

python convert_task_list.py $source_filename.tasks $source_filename.md
case "$format" in
  pdf_and_md)
      pandoc --mathjax -s $source_filename.md -o $source_filename.pdf
      ;;
  pdf)
      pandoc --mathjax -s $source_filename.md -o $source_filename.pdf
      rm $source_filename.md
      ;;
  html)
      pandoc --mathjax -s $source_filename.md -o $source_filename.html
      rm $source_filename.md
      ;;
  md)
      ;;
esac
}

#########################
# The command line help #
#########################
display_help() {
    echo "exportSMCtasks, a program to convert SMC tasks files to other formats."
    echo
    echo "USAGE:"
    echo
    echo "$0 [option] [source_filename]" >&2
    echo
    echo "   -f, --format           Specify the output format. Valid options are: pdf (default), markdown (or md), and html."
    #echo "   -s, --source           Specify the source filename (optional)."
    #echo "   -o, --output           Specify the output filename (optional)."
    echo "   -h, --help             Display this help."
    echo
    echo "EXAMPLES: "
    echo
    echo "Convert tasks file to md and pdf"
    echo "    ./exportSMCtasks.sh myTasks.tasks"
    echo
    echo "Convert tasks file to pdf"
    echo "    ./exportSMCtasks.sh -f pdf myTasks.tasks"
    echo
    echo "Convert tasks file to HTML"
    echo "    ./exportSMCtasks.sh -f html myTasks.tasks"
    echo
    echo "Convert tasks file to Markdown"
    echo "    ./exportSMCtasks.sh -f md myTasks.tasks"
    echo
    echo "TO-DO: "
    echo
    echo "Support SMC chat input format."
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
    format="pdf_and_md";
fi

start_export_tasks