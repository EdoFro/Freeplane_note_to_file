// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/NoteToFile"})

import NTF

if (node.note){
    def texto = node.note
    def file = node.link.file?:null
    //si tiene link
    if(file?.exists()){ 
        //si usuario confirma
        if ( ui.showConfirmDialog(null, "export text to: \n\n  ${file} ?", "Overwrite file with node's note?", 2, 2)==0) // does node have a note and defined extension?
        {
           // file.text = texto
           file.setText(texto.toString(), 'UTF-8')
        } else {
            c.statusInfo = " Note's export aborted"
        }
    } else {
        //si tiene extension
        def ext = NTF.extensionFromNode(node)
        if ( ext ){
            if ( ui.showConfirmDialog(null, "Overwrite temp file with node's note?", "export text to ${ext} file", 2, 2)==0) // does node have a note and defined extension?
            {
                ext = ext.toString().toLowerCase()
                NTF.setExtension(node, ext)
                // is it a groovy type note? --> save it in scripts folder and add ExecutionModes line
                if(ext =='groovy'){
                    texto = NTF.executionMode + texto
                }
                File myFile = new File(NTF.getFolderAndName(ext) + ext)
                myFile.text = texto
                c.statusInfo = " ---> Note text saved as temp file"
            } else {
                c.statusInfo = " Note's export aborted"
            }
        } else {
            c.statusInfo = " Node has no valid link or temp extension defined"
        }
    }
} else {
    c.statusInfo = " No Note in selected node"
}