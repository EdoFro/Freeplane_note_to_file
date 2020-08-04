// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/NoteToFile"})

//import Ntf


def mensaje = Ntf.attributeForExtensions()
ui.informationMessage(mensaje)

mensaje = NtfX.attributeForExtensions()
ui.informationMessage(mensaje)