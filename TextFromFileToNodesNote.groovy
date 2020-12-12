// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/NoteToFile"})

//get all selected nodes with links to files
def nodesWithLinksToFiles = c.selecteds.findAll{it.link.uri && (it.link.uri.scheme == null || it.link.uri.scheme == 'file')}
//get all the ones that had also a note
def nodesWithLinksAndNotes = nodesWithLinksToFiles.findAll{it.note!=null}


// if any has a note --> then it deletes all notes
// else: it brings the filetext to the notes for all nodes
if (nodesWithLinksAndNotes.size()>0){
    nodesWithLinksAndNotes.each{it.note = null}
} else {
    nodesWithLinksToFiles.each{
        def file = it.link.file
        if (!file.exists()) {
            it.noteText = "Link in node '${it.text}' is not valid: " + file
        } else {
            if (NTF.extensionFromFilePath(file.path) in NTF.acceptedFileExtensions){
                it.note = file.text
            } else {it.noteText = ' File estension is not accepted to bring its text into a note '}
        }
    }
}