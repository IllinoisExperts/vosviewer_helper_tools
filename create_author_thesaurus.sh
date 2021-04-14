# This shell script accepts 2 arguments:
## 1) An existing RIS file
## 2) A thesaurus text file (to be created)
#
# Given these inputs, this shell script will:
## 1) extract all authors
## 2) sort them alphabetically by last name
## 3) filter to show only unique names
## 4) remove characters 1-6 (e.g. "AU  - ")
## 5) add a tab after each line
#
# Example:
## bash prep_for_vosviewer.sh sample_research_exported_from_experts.ris sample_author_thesaurus.txt
echo "label	replace by" > "$2"
grep "^AU  " "$1" | sort | uniq | cut --complement -c 1-6 | sed 's/ *$/\t/' >> "$2"
