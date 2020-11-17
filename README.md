# Freeplane note to file

groovy scripts to use node's notes as textfiles

The NoteToFile.mm (Freeplane map) has a better and detailed explanation about this scripts and how they work.

## NEW: openWithGroovyConsole.groovy

**Note**: for this script to work, yo need the **wikdShell Addon v0.3.2** and a **Freeplane** version equal or newer than **v1.8.10-pre06**

This script opens the wikdShell groovy console adding this functionalities:

- if when calling the script, the selected node has:
  - a link to a groovy file
  - a 'script1' attribute
  - or a groovy script in its note (and it is marked as a groovy node)
  
  the groovy console opens with that script in its editing pane

- it adds two buttons to the groovy console to directly export the edited script to
  - the node's note
  - or the node's 'script1' attribute

## NoteToFile.groovy

### Description

Saves the note's text from the selected node to a file (it doesn't open another application (for exmple Notepad++))

### it works this way

    if node has a note -->
      if node has a link to a existing file -->
        save note to file
    else
      if node has a defined extension
        save note to temp file

## FileToNode.groovy

### Description

imports a file as text into the selected node's note

(it doesn't open another application (or Notepad++))

### it works this way

    if node has a link to an existing file
      if extension from file is an "accepted file   extension"
        --> copies file text into note
    else
      if node has a defined extension
        --> copies text from temp file with same extension into note

## OpenWithNotepad++.groovy

### Description

Script for Freeplane to open files or node's notes as files in Notepad++

### it works this way

    if node
      has a link to a file -->
        it opens the file in N++
      has a note -->
        saves it as a textfile and opens it in N++
        if it's a groovy script
          it saves it in the user's scripts folder
        if not
          it saves it in a default folder
      has no link nor note -->
        takes text from last groovy script tempFile and brings it as a note

## LastLoggedError.groovy

it shows the last lines from the log.0 file where Freeplane logs errors and other events

## more information

more information in the OpenWithNotepad++.mm Freeplane file

and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
