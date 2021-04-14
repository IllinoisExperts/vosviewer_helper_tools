# vosviewer_helper_tools

These helper tools enable users to prepare data extracted from Illinois Experts for visualization in the open source software VOS Viewer (https://www.vosviewer.com/)

The shell script accepts 2 arguments:
1) An existing RIS file e.g. sample_research.ris
2) The name you want to give the outputted thesaurus file e.g. sample_author_thesaurus.txt

Given these inputs, this shell script will:
1) Extract all authors from RIS file
2) Sort them alphabetically by last name
3) Filter to show only unique names
4) Remove characters 1-6 (e.g. "AU  - ")
5) Add a tab after each line
6) Save the results in the thesaurus filename you specified above

Example:
```bash prep_for_vosviewer.sh sample_research_exported_from_experts.ris sample_author_thesaurus.txt```

To visualize your research connections VOSViewer: 
1) Run the shell script. 
2) Next, open the thesaurus text file. Find the authors you want to visualize in VOSViewer.
3) For each author name variant, type the correct name after the tab. Ensure there are no extra spaces after that name.
4) All other names (without a correct name) will be suppressed in the VOSViewer visualization.

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

## Resources:
Shotts, William. The Linux Command Line, 2nd edition. Available digitally from UIUC Library.
https://explainshell.com/
https://swcarpentry.github.io/shell-novice/
