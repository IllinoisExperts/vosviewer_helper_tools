# vosviewer_helper_tools

This shell script accepts 2 arguments:
1) An existing RIS file
2) A thesaurus text file (to be created)

Given these inputs, this shell script will:
1) Extract all authors
2) Sort them alphabetically by last name
3) Filter to show only unique names
4) Remove characters 1-6 (e.g. "AU  - ")
5) Add a tab after each line

Example:
```bash prep_for_vosviewer.sh sample_research_exported_from_experts.ris sample_author_thesaurus.txt```

To use this in VOSViewer, run the shell script. 
Next, open the thesaurus text file. Find the authors you want to visualize in VOSViewer.
For each author name variant, type the correct name after the tab. Ensure there are no extra spaces after that name.
All other names (without a correct name) will be suppressed in the VOSViewer visualization.

Example:
```
Last, F. M.	
Last, First	
Last, First Middle	
Unwanted, Person	
Otherunwanted, Person	
```

Update to:
```
Last, F. M.	Last, First
Last, First	Last, First
Last, First Middle	Last, First
Unwanted, Person	
Otherunwanted, Person	
```

By adding the same name (Last, First) to each of the 3 variations of that name, VOSViewer will correctly interpret all of these as one person. 
By leaving the last two names alone, they will be ignored by VOSViewer.


Resources:
Shotts, William. The Linux Command Line, 2nd edition. Available digitally from UIUC Library.
https://explainshell.com/
https://swcarpentry.github.io/shell-novice/
