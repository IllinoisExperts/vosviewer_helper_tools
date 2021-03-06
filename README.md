# vosviewer_helper_tools

These helper tools enable users to prepare data extracted from Illinois Experts for visualization in the open source software VOS Viewer (https://www.vosviewer.com/).
- create_author_thesaurus.sh: A bash script available to any Illinois Experts user in preparing data for visualization
- verify_internal_author_names.py: A python script for use by Experts staff 

### Begin by navigating to the directory where your RIS file is located. Save the shell script to this location.  

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
```bash create_author_thesaurus.sh sample_research_exported_from_experts.ris sample_author_thesaurus.txt```

### After running the shell script, manually edit the newly-created thesaurus file. 

For each researcher you want listed in the visualization, add their "correct name" variation (how you want the name to appear in the visualization). 

1) Scroll through to find the authors you want to visualize in VOS Viewer.
2) There may be 1 or more versions of each author's name. For each author name variant, type the "correct name" after the tab. Ensure there are no extra spaces after that name. 
3) Note: Even if an author has only 1 name variation, you must add a "correct name" for the author to show up in VOS Viewer. All other names (without a correct name) in the thesaurus will be suppressed in the VOS Viewer visualization.

Example thesaurus generated by shell script:
```
Last, F. M.	
Last, First	
Last, First Middle	
Unwanted, Person	
Otherunwanted, Person	
```

Manually update thesaurus to:
```
Last, F. M.	Last, First
Last, First	Last, First
Last, First Middle	Last, First
Unwanted, Person	
Otherunwanted, Person	
```

By adding the same name (Last, First) to each of the 3 variations of that name, VOSViewer will correctly interpret all of these as one person. By leaving the last two names alone, they will be ignored by VOSViewer.

## Tools required: 
- Notepad++ or similar plain text editor installed on your local computer (https://notepad-plus-plus.org/downloads/). 
- Unix-based command line tool installed on your local computer. If you have a Mac or Linux computer, this is preinstalled, called the Terminal. If you have a Windows computer, this is not the same as the command prompt or PowerShell. Suggested to install git bash for Windows (https://git-scm.com/downloads).  

## Resources:
- Shotts, William. The Linux Command Line, 2nd edition. Available digitally from UIUC Library.
- https://explainshell.com/
- https://swcarpentry.github.io/shell-novice/
