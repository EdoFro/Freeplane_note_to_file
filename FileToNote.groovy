// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/NoteToFile"})

import NTF

def file = node.link.file?:null
if(file?.exists()){
    if (NTF.extensionFromFilePath(node.link.uri.path) in NTF.acceptedFileExtensions || ui.showConfirmDialog(null, "\nFILE HAS NO ACCEPTED EXTENSION \n\nContinue anyway?\n ", "Attention!!", 2, 0)==0){
        if(!node.note || (node.note && ui.showConfirmDialog(null, "import text from: \n\n   ${file} ?", "Replace current node's note?", 2, 2)==0)){
            node.noteText = file.text
        } else {c.statusInfo = " note's import aborted"}
    } else {
        c.statusInfo = " file extension not accepted to be copied into node's note"
    }
} else {
    def ext = NTF.extensionFromNode(node)
    if(ext){
        if(!node.note || (node.note && ui.showConfirmDialog(null, "Replace current node's note?", "import text from ${ext} file", 2, 2)==0)){
            File myFile = new File(NTF.getFolderAndName(ext) + ext)
            if (!myFile.exists()){
                myFile.text = '// no previous file in drive'
            }
            def texto = myFile.text
            if(ext == 'groovy'){
                i=texto.indexOf('\n')+1
                texto = texto.drop(i)
            }
            NTF.setExtension(node, ext)
            node.noteText = texto
            c.statusInfo = " ${ext} text copied into node's note"   
        }
    }else {
        c.statusInfo = "no file extension defined in the node"
    }   
}