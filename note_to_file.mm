<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Note to File" FOLDED="false" ID="ID_889872586" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_notes_in_map="false" show_note_icons="true" fit_to_viewport="false" mapUsesOwnSaveOptions="true" save_folding="save_folding_if_map_is_changed" save_last_visited_node="default" save_modification_times="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_923585992" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_923585992" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#ffcc33" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#ff6600"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="24" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <h1>
      Freeplane note to file
    </h1>
    <p>
      groovy scripts to use node's notes as textfiles
    </p>
    <p>
      The NoteToFile.mm (Freeplane map) has a better and detailed explanation about this scripts and how they work.
    </p>
    <h2>
      NoteToFile.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      Saves the note's text from the selected node to a file (it doesn't open another application (for exmple Notepad++))
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <pre><code>    if node has a note --&gt;
      if node has a link to a existing file --&gt;
        save note to file
    else
      if node has a defined extension
        save note to temp file</code></pre>
    <h2>
      FileToNode.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      imports a file as text into the selected node's note
    </p>
    <p>
      (it doesn't open another application (or Notepad++))
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <pre><code>    if node has a link to an existing file
      if extension from file is an &quot;accepted file   extension&quot;
        --&gt; copies file text into note
    else
      if node has a defined extension
        --&gt; copies text from temp file with same extension into note</code></pre>
    <h2>
      OpenWithNotepad++.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      Script for Freeplane to open files or node's notes as files in Notepad++
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <pre><code>    if node
      has a link to a file --&gt;
        it opens the file in N++
      has a note --&gt;
        saves it as a textfile and opens it in N++
        if it's a groovy script
          it saves it in the user's scripts folder
        if not
          it saves it in a default folder
      has no link nor note --&gt;
        takes text from last groovy script tempFile and brings it as a note</code></pre>
    <h2>
      LastLoggedError.groovy
    </h2>
    <p>
      it shows the last lines from the log.0 file where Freeplane logs errors and other events
    </p>
    <h2>
      more information
    </h2>
    <p>
      more information in the OpenWithNotepad++.mm Freeplane file
    </p>
    <p>
      and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
    </p>
  </body>
</html>
</richcontent>
<node TEXT="definitions" POSITION="bottom_or_right" ID="ID_162059596">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      I use some terms in this map to explain the scripts installation and functions
    </p>
    <p>
      
    </p>
    <p>
      here I try to define this terms better to avoid confussions
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      used in this map for explain
    </p>
  </body>
</html></richcontent>
<node TEXT="text file" FOLDED="true" ID="ID_180563109"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>a file that has text in it </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>it doesn't need to be a txt file </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>for example, .sql, .groovy, .java, .config ,.xml files are also for this definition text files </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>an easy test is if the file can be opened in the notepad aplication or another text editor (and its human readable) </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>I defined some extensions as text files in the NTF library </b>
    </p>
  </body>
</html></richcontent>
<node TEXT="a file that has text in it" ID="ID_1116377176"/>
<node TEXT="it doesn&apos;t need to be a txt file" ID="ID_22663723"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      like 'exampleFile.txt'
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="for example, .sql, .groovy, .java, .config ,.xml files are also for this definition text files" ID="ID_1089483885"/>
<node TEXT="an easy test is if the file can be opened in the notepad aplication or another text editor (and its human readable)" ID="ID_1133778450"/>
<node TEXT="I defined some extensions as text files in the NTF library" ID="ID_323928511">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1565157321" STARTINCLINATION="450.74999 pt;0 pt;" ENDINCLINATION="450.74999 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="temp file" ID="ID_929572360"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      when the node has no link to a file, the note's text is readed or written to a temporary file
    </p>
    <p>
      
    </p>
    <p>
      it creates a new temp file for every diferent extension type (if needed)
    </p>
    <p>
      
    </p>
    <p>
      but for any extension type it creates only one temporary file
    </p>
  </body>
</html></richcontent>
<node TEXT="when the node has no link to a file, the note&apos;s text is readed or written to a temporary file" ID="ID_1184155790"/>
<node TEXT="this file is in a folder defined by the user" ID="ID_634390692">
<node TEXT="defined in the NTF.groovy file" ID="ID_1431269469"/>
</node>
<node TEXT="it creates a new temp file for every diferent extension type (if needed)" ID="ID_1507486453"/>
<node ID="ID_579388554"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      but for any extension type it creates only <u>one </u>temporary file
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="when another note with the same extension has to be saved, it saves it on the same temp file, overwriting its previous content." ID="ID_1963987717">
<node TEXT="this way the folder doesn&apos;t get full with useless tempfiles" ID="ID_1595286276"/>
<node TEXT="the information stays in the node&apos;s notes and can be updated there" ID="ID_450021229"/>
<node TEXT="you don&apos;t need to look after the new temp files in other application if you export another node&apos;s note" ID="ID_366191838"/>
</node>
</node>
</node>
<node TEXT="install" FOLDED="true" POSITION="bottom_or_right" ID="ID_1460052182">
<edge COLOR="#007c7c"/>
<node TEXT="Install the NTF.groovy file as a library in Freeplane" FOLDED="true" ID="ID_681416454" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the other scripts need this library
    </p>
  </body>
</html></richcontent>
<node TEXT="copy the NTF.groovy file into your lib folder in your freeplane user directory" ID="ID_1738370560">
<node TEXT="open your user directory" ID="ID_170909371" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="in there you can see your &apos;lib&apos; folder" ID="ID_748841955" NUMBERED="true"/>
<node TEXT="open it" ID="ID_1450251750" NUMBERED="true"/>
<node TEXT="copy the file &apos;NTF.groovy&apos; in there" ID="ID_1608263458" NUMBERED="true"/>
</node>
</node>
<node TEXT="copy the other scripts into your scripts folder" FOLDED="true" ID="ID_808915544" NUMBERED="true">
<node TEXT="open your user directory" ID="ID_607663106" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="in there you can see your &apos;scripts&apos; folder" ID="ID_1573664807" NUMBERED="true"/>
<node TEXT="copy the groovy files in there" ID="ID_1326603284" NUMBERED="true"/>
</node>
<node TEXT="modify the NTF.groovy file for your use" FOLDED="true" ID="ID_655711305" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      define some variables for your system
    </p>
  </body>
</html></richcontent>
<node TEXT="constants you may need to change for the scrips to work" ID="ID_556966363">
<node TEXT="addressNpp" ID="ID_1162221139" STYLE="bubble"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // its the location where the Notepad++ executable is instaled
    </p>
  </body>
</html></richcontent>
<node TEXT="def addressNpp = &apos;C:\\Program Files\\Notepad++\\notepad++.exe&apos;" ID="ID_1181116457"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="mapFolders[&apos;xDefault&apos;]" ID="ID_833376978" STYLE="bubble">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1075915769" STARTINCLINATION="508.49998 pt;0 pt;" ENDINCLINATION="508.49998 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      inside method getFolderAndName
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      default path where temp files are going to be saved. this directory must exist (in my case 'C:/Temp/').
    </p>
  </body>
</html></richcontent>
<node TEXT="mapFolders[&apos;xDefault&apos;] = &apos;C:/Temp/&apos;" ID="ID_1954819345"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="constants you may want to change or add" ID="ID_1349234892">
<node TEXT="acceptedFileExtensions" ID="ID_1565157321" STYLE="bubble"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // list of file extension Idefined as text files and I decided that can be opened with Notepad ++ (it is only to avoid opening pdf or excel files in N++ accidentally).
    </p>
    <p>
      
    </p>
    <p>
      You can add others or remove some of them.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node TEXT="def acceptedFileExtensions = [&apos;groovy&apos;, &apos;sql&apos;, &apos;txt&apos;, &apos;ini&apos;, &apos;cfg&apos;, &apos;md&apos;]" ID="ID_928801239"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case until now
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="mapFolders" ID="ID_556920426" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      map that relates extension to folderpath
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      inside method <b><u>getFolderAndName</u></b>
    </p>
  </body>
</html></richcontent>
<node TEXT="groovy : userDirectory/scripts/" ID="ID_1241376040"/>
<node TEXT="you can add others if you like,&#xa;adding more lines in there using the following format" ID="ID_1820721854">
<node TEXT="mapFolders[&apos;theFileExtension&apos;] = &apos;yourOwnPathForThisFileType/&apos;" ID="ID_974265252"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      it has to end with a slash
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="constants you can change, but you don&apos;t need to" ID="ID_1776286073">
<node TEXT="executionMode" ID="ID_1777931823" STYLE="bubble">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1435698012" STARTINCLINATION="476.24999 pt;0 pt;" ENDINCLINATION="476.24999 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      first line for temporal groovy scripts
    </p>
    <p>
      
    </p>
    <p>
      it specifies the execution mode:
    </p>
    <ul>
      <li>
        on single node
      </li>
      <li>
        on selected node
      </li>
      <li>
        on selected node recursively
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      more info in Freeplane's webpage
    </p>
    <p>
      
    </p>
    <p>
      and if specifies where in Freeplane's menú will this script be shown
    </p>
    <p>
      
    </p>
    <p>
      in this case into:
    </p>
    <ul>
      <li>
        <p>
          /main_menu/ScriptsEdo/NoteToFile submenu
        </p>
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="executionMode = &apos;// @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/NoteToFile&quot;})\n\n&apos;" ID="ID_127459783"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="attributeForExtensions" ID="ID_1858530808" STYLE="bubble"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      name of the attribute to be added (when needed) to some of the nodes to specify file extension
    </p>
  </body>
</html></richcontent>
<node TEXT="attributeForExtensions = &apos;file_ext&apos;" ID="ID_1977785977"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="fileName" ID="ID_1491015402" STYLE="bubble"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      name to be used for the temp files
    </p>
  </body>
</html>
</richcontent>
<node TEXT="fileName = &apos;myTempFile&apos;" ID="ID_395464232"/>
</node>
</node>
</node>
<node TEXT="close and reopen Freeplane" ID="ID_1598293444" NUMBERED="true"/>
<node TEXT="the scripts appear in the menu" FOLDED="true" ID="ID_1360122568" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      / main_menu / ScriptsEdo / Note To File
    </p>
  </body>
</html></richcontent>
<node TEXT="NoteToFile_Menu.png" ID="ID_693352354">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_note_to_file/note_to_file_files/NoteToFile_Menu.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Add Keyboard Shortcuts (if you want to)" FOLDED="true" ID="ID_1893495902" NUMBERED="true">
<node TEXT="I use them myself as you can see here:" ID="ID_1490549884">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_693352354" STARTINCLINATION="183.74999 pt;0 pt;" ENDINCLINATION="183.74999 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="I have 2 monitors (notebook + external monitor) and I use Freeplane on the big one (on the right).&#xa;That&apos;s why my shorcuts for NoteToFile and FileToNote use the arrows keys. That way it feels very natural" ID="ID_1779070113">
<node TEXT="NoteToFile.groovy" ID="ID_1648884605" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Alt + Left arrow
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="FileToNote.groovy" ID="ID_722436589" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Alt + Right arrow
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="OpenWithNotepad++" ID="ID_1477325326" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Shft + +
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="MyTempFile" ID="ID_1125690732" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Shft + M
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="adding keyboard shorcuts in Freeplane is very easy.&#xa;Just do this few step" ID="ID_1980339850">
<node TEXT="open the menú where the command is" ID="ID_800859812"/>
<node TEXT="press the Ctrl key in your keyboard when clicking on the command with the mouse" ID="ID_1001711293"/>
<node TEXT="it appears the &apos;enter new key&apos; form where you can assign a keystroke for the command" ID="ID_605749348"/>
</node>
<node TEXT="or ..." ID="ID_1898029197">
<node TEXT="go to the menu Tools / Assign Hot Keys" ID="ID_60007377"/>
</node>
<node TEXT="or ..." ID="ID_1595153354">
<node TEXT="or click this button" ID="ID_769163681" ICON_SIZE="28 pt" LINK="menuitem:_SetAcceleratorOnNextClickAction"/>
</node>
</node>
</node>
<node TEXT="Scripts" POSITION="bottom_or_right" ID="ID_1476340580">
<edge COLOR="#007c7c"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      descriptions and examples
    </p>
  </body>
</html></richcontent>
<node TEXT="NTF.groovy" ID="ID_987415585"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this is a common library
    </p>
  </body>
</html></richcontent>
<node TEXT="library with common constants and methods" ID="ID_887780320"/>
<node ID="ID_808452146"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      here you can customize some scripts constants for your needs. more under '<b>install'</b>
    </p>
  </body>
</html>
</richcontent>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_655711305" STARTINCLINATION="156 pt;0 pt;" ENDINCLINATION="156 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="NoteToFile.groovy" ID="ID_1419635768">
<node TEXT="description" FOLDED="true" ID="ID_1395278738">
<node TEXT="saves the note&apos;s text from the selected node to a file" ID="ID_1821845247"/>
<node TEXT="it doesn&apos;t open another application (or Notepad++)" ID="ID_703934626"/>
<node TEXT="general idea:" FOLDED="true" ID="ID_1375511796"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html></richcontent>
<node TEXT="if node has a note --&gt;" ID="ID_1117572894">
<node TEXT="if node has a link to a existing file --&gt;" ID="ID_1042961255"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html></richcontent>
<node TEXT="save note to file" ID="ID_1305173532"/>
</node>
<node TEXT="else" ID="ID_1668461704"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      (has no link)
    </p>
  </body>
</html></richcontent>
<node TEXT="if node has a defined extension" ID="ID_344662637"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html></richcontent>
<node TEXT="save note to temp file" ID="ID_151990483"/>
</node>
</node>
</node>
</node>
<node TEXT="more detailed:" FOLDED="true" ID="ID_346684695"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html></richcontent>
<node TEXT="if node has a note --&gt;" ID="ID_291066767">
<node TEXT="if node has a link to a existing file --&gt;" ID="ID_1546087462"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html></richcontent>
<node TEXT="save note to file" ID="ID_196908997"/>
</node>
<node TEXT="else" ID="ID_751523097"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      (has no link)
    </p>
  </body>
</html></richcontent>
<node TEXT="if node has a defined extension" ID="ID_798310712"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html></richcontent>
<node TEXT="if extension == &apos;groovy&apos; --&gt; it adds the execution mode line to the text to be saved" ID="ID_1435698012"/>
<node TEXT="defines temp file path and name for the current extension" ID="ID_1075915769">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_556920426" STARTINCLINATION="466.49999 pt;0 pt;" ENDINCLINATION="466.49999 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
</node>
<node TEXT="save note to temp file" ID="ID_157018368"/>
</node>
</node>
</node>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_521507055">
<node TEXT="look at the groovy file" ID="ID_1902534384"/>
<node TEXT="and at the lib NTF.groovy file" ID="ID_924577212"/>
</node>
</node>
<node TEXT="use cases" ID="ID_186256293">
<node TEXT="definitions" FOLDED="true" ID="ID_510390288">
<node TEXT="look in definition what I mean with &apos;text file&apos;" ID="ID_607601539">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_180563109" STARTINCLINATION="453.74999 pt;0 pt;" ENDINCLINATION="453.74999 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="look in definition what I mean with &apos;temp file&apos;" ID="ID_1912150925">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_929572360" STARTINCLINATION="448.49999 pt;0 pt;" ENDINCLINATION="448.49999 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="temporal text file" FOLDED="true" ID="ID_381202340">
<node TEXT="you can have some scripts, texts, codes, etc. in a map and export them to a temp file only when you need them" ID="ID_1304295930"/>
<node TEXT="tutorial" ID="ID_1995431867">
<node TEXT="here you have a node with text notes" ID="ID_1309264797"/>
<node TEXT="Lorem Ipsum" ID="ID_766691172"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
    <p>
      
    </p>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
    <p>
      
    </p>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
    <p>
      
    </p>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
    <p>
      
    </p>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
<node TEXT="NoteToFile can&apos;t execute on it cause it doesn&apos;t know the file extension" ID="ID_1270220919"/>
</node>
<node TEXT="for the script to know what file to save, you have to define it in the node.&#xa;you can do that with any of this choices" ID="ID_52329417">
<node TEXT="end the text of the node with .extension" ID="ID_653793550">
<node TEXT="Lorem Ipsum.txt" ID="ID_655557435"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
    <p>
      
    </p>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
    <p>
      
    </p>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
    <p>
      
    </p>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
    <p>
      
    </p>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="start de details of the node with.extension.Examples:" ID="ID_576991996">
<node TEXT="Lorem Ipsum" ID="ID_111303218"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
    <p>
      
    </p>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
    <p>
      
    </p>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
    <p>
      
    </p>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
    <p>
      
    </p>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Lorem Ipsum" ID="ID_1291674896"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
    <p>
      
    </p>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
    <p>
      
    </p>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
    <p>
      
    </p>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
    <p>
      
    </p>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt and more text
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Lorem Ipsum" ID="ID_922627449"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
    <p>
      
    </p>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
    <p>
      
    </p>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
    <p>
      
    </p>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
    <p>
      
    </p>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
    <p>
      and more text
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="define the estension in an atribute" ID="ID_1410545570">
<node TEXT="Lorem Ipsum" ID="ID_178547299"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
    <p>
      
    </p>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
    <p>
      
    </p>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
    <p>
      
    </p>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
    <p>
      
    </p>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
<attribute NAME="file_ext" VALUE="txt"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Nunc sed augue lacus viverra
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="test:" ID="ID_1042393235">
<node TEXT="select this node and apply NoteToFile --&gt;" ID="ID_1269882343">
<node TEXT="Lorem Ipsum p01.txt" ID="ID_444509876"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="open the myTempFile.txt in notepad" ID="ID_1588258916"/>
<node TEXT="select any of this nodes and apply NoteToFile --&gt;" ID="ID_1120590874">
<node TEXT="Lorem Ipsum p02.txt" ID="ID_65368270"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Lorem Ipsum p03.txt" ID="ID_794965364"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Lorem Ipsum p04.txt" ID="ID_1359445758"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Lorem Ipsum p04.txt" ID="ID_407872123"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="open it again in notepad to see the changed file" ID="ID_510300870"/>
<node TEXT="If you do this test with Notepad++ it is updated automatically" ID="ID_1496215395"/>
</node>
</node>
</node>
<node TEXT="temporal Groovy scripts:" ID="ID_1808782116">
<node TEXT="you can have some scripts in a map and export them to a file only to run them when you need" ID="ID_1575463269"/>
<node TEXT="this way your script menú stays lean with the most usefull or recurrent scripts only" ID="ID_361292784"/>
<node TEXT="tutorial:" ID="ID_125456475">
<node TEXT="here you have a series of nodes with groovy scripts" ID="ID_928932008"/>
<node TEXT="they are very simple scripts that the only thing they do is to show a message" ID="ID_1913301574"/>
<node TEXT="as child nodes of each one are some explanations for it" ID="ID_1631178089"/>
<node TEXT="just do this:" ID="ID_149900656"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      for each one
    </p>
  </body>
</html></richcontent>
<node TEXT="select one of them" ID="ID_1023463621" NUMBERED="true"/>
<node TEXT="apply the NoteToFile command" ID="ID_1807052161" NUMBERED="true">
<node TEXT="from menú" ID="ID_1650080288"/>
<node TEXT="or with hotkeys if you defined some" ID="ID_1555055474"/>
<node TEXT="or by clicking this button (without selecting this node!)" ID="ID_151719852" ICON_SIZE="28 pt" LINK="menuitem:_NoteToFile_on_selected_node" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the groovy node must stay selected when clicking this button
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="accept overwriting its previous content" ID="ID_46548314" NUMBERED="true"/>
<node TEXT="execute it" ID="ID_1544069652" NUMBERED="true">
<node TEXT="from menú" ID="ID_1572490495">
<node TEXT="Scripts Edo / Note To File / My Temp File" ID="ID_951775650"/>
</node>
<node TEXT="or with hotkeys if you defined some" ID="ID_1139543280"/>
<node TEXT="or by clicking this button (without selecting this node!)" ID="ID_293388392" ICON_SIZE="28 pt" LINK="menuitem:_MyTempFile_on_single_node" STYLE="bubble"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the groovy node must stay selected when clicking this button
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="example groovy nodes for testing" ID="ID_718429299">
<node TEXT="helloWorld" ID="ID_1227005180"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      def texto = &quot; Hello World &quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="helloWorld 2.groovy" ID="ID_1024697830"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      def texto = &quot; Hello World \n it added .groovy as node's details&quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="66.75 pt" VALUE_WIDTH="115.5 pt"/>
<node TEXT="it adds the extension &quot;.groovy&quot; as node details" ID="ID_1277779376"/>
</node>
<node TEXT="helloWorld 3.groovy" ID="ID_1079317397"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      def texto = &quot; Hello World 3 \n this time it added an attribute to the node &quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      have a happy day!!
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="66.75 pt" VALUE_WIDTH="115.5 pt"/>
<node TEXT="details are being used for other information" ID="ID_1840210638"/>
<node TEXT="it adds the extension &quot;.groovy&quot; as node attribute" ID="ID_539591123"/>
</node>
<node TEXT="helloWorld" ID="ID_1961190755"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      def texto = &quot; Hello World ???? &quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="66.75 pt" VALUE_WIDTH="115.5 pt"/>
<node TEXT="doesn&apos;t do nothing cause it has no extension defined" ID="ID_1066563543"/>
</node>
</node>
</node>
</node>
<node TEXT="existing text file" FOLDED="true" ID="ID_388857484">
<node TEXT="you can update a text file in your drive with the text of the selected node note" ID="ID_41171510"/>
<node TEXT="tutorial" ID="ID_1266773584">
<node TEXT="create an empty textfile in your drive" ID="ID_115261911"/>
<node TEXT="create a node with a link to the file" ID="ID_616811302"/>
<node TEXT="add text in the note of that node" ID="ID_1430797758"/>
<node TEXT="apply NoteToFile on it" ID="ID_584970851"/>
<node TEXT="now open your text file in notepad or any text editor and you can see it has changed" ID="ID_1458096112"/>
</node>
</node>
</node>
</node>
<node TEXT="FileToNote.groovy" ID="ID_623846943">
<node TEXT="just like NoteToFile but the other way" ID="ID_889121028"/>
<node TEXT="description" FOLDED="true" ID="ID_866188859">
<node TEXT="imports a file as text into the selected node&apos;s note" ID="ID_1479278211"/>
<node TEXT="it doesn&apos;t open another application (or Notepad++)" ID="ID_20090125"/>
<node TEXT="general idea:" FOLDED="true" ID="ID_143391280"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html></richcontent>
<node TEXT="if node has a link to an existing file" ID="ID_291424782">
<node TEXT="if extension from file is an &quot;accepted file extension&quot;" ID="ID_1355376679">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1565157321" STARTINCLINATION="569.24998 pt;0 pt;" ENDINCLINATION="569.24998 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html></richcontent>
<node TEXT="copies file text into note" ID="ID_1610787778"/>
</node>
</node>
<node TEXT="else" ID="ID_1097171146">
<node TEXT="if node has a defined extension" ID="ID_1291858666"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html></richcontent>
<node TEXT="copies text from temp file with same extension into note" ID="ID_1305404405"/>
</node>
</node>
</node>
<node TEXT="more detailed" FOLDED="true" ID="ID_857289733"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html></richcontent>
<node TEXT="if node has a link to an existing file" ID="ID_413750479">
<node TEXT="if extension from file is an &quot;accepted file extension&quot;" ID="ID_422859122">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1565157321" STARTINCLINATION="569.24998 pt;0 pt;" ENDINCLINATION="569.24998 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="if note is empty or user confirms overwriting it" ID="ID_643618890">
<node TEXT="copies file text into note" ID="ID_1851137482"/>
<node TEXT="set extension in node" ID="ID_1434473938"/>
</node>
</node>
</node>
<node TEXT="else" ID="ID_59998678">
<node TEXT="if node has a defined extension" ID="ID_442521459">
<node TEXT="if note is empty or user confirms overwriting it" ID="ID_1352216">
<node TEXT="if it is a groovy file, it drops the first text line (executionmode)" ID="ID_519714599"/>
<node TEXT="copies text from temp file with same extension into note" ID="ID_853054553"/>
<node TEXT="set extension in node" ID="ID_1279218785"/>
</node>
</node>
</node>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_1199364540">
<node TEXT="look at the groovy file" ID="ID_654744777"/>
<node TEXT="and at the lib NTF.groovy file" ID="ID_1130969473"/>
</node>
</node>
</node>
<node TEXT="OpenWithNotepad++" ID="ID_819638833">
<node TEXT="description" FOLDED="true" ID="ID_496019362">
<node TEXT="Script to open files or node&apos;s notes as files in Notepad++" ID="ID_672112149"/>
<node TEXT="general idea:" ID="ID_1158237344"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html></richcontent>
<node TEXT="if node" ID="ID_1353490900">
<node TEXT="has a link to a file" ID="ID_187460760">
<node TEXT="--&gt;" ID="ID_201884451">
<node TEXT="opens the file in N++" ID="ID_987102454"/>
</node>
</node>
<node TEXT="has a note" ID="ID_776425221">
<node TEXT="--&gt;" ID="ID_220116147">
<node TEXT="saves it as a textfile and opens it in N++" ID="ID_717675618"/>
</node>
</node>
<node TEXT="has no link nor note" ID="ID_1084538243">
<node TEXT="--&gt;" ID="ID_1598674139">
<node TEXT="takes text from last tempFile and brings it as a note" ID="ID_709575493"/>
</node>
</node>
</node>
</node>
<node TEXT="more detailed:" FOLDED="true" ID="ID_1000893871"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html></richcontent>
<node TEXT="if node" ID="ID_756444367">
<node TEXT="has a link to a file" ID="ID_911475778">
<node TEXT="--&gt;" ID="ID_278781565">
<node TEXT="it opens the file in N++" ID="ID_316514421"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      only if extension is listed as accepted by the user in the script
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="has a note" ID="ID_1387994166"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      and has no link
    </p>
  </body>
</html></richcontent>
<node TEXT="--&gt;" ID="ID_931832867">
<node TEXT="saves it as a textfile and opens it in N++" ID="ID_1194509406">
<node TEXT="if it&apos;s a groovy script" ID="ID_1578354392">
<node TEXT="it saves it in the user&apos;s scripts folder" ID="ID_1687636439"/>
</node>
<node TEXT="if not" ID="ID_1748074945">
<node TEXT="it saves it in a default folder" ID="ID_624553843"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      defined by the user in the script
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="has no link nor note" ID="ID_706329662">
<node TEXT="--&gt;" ID="ID_1179727127">
<node TEXT="takes text from last tempFile and brings it as a note" ID="ID_872217065"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      chooses the tempFile with the desired extension
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="more more detailed" FOLDED="true" ID="ID_92849586">
<node TEXT="look at the script logic" ID="ID_490321295" LINK="#ID_555265321"/>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_1038108371">
<node TEXT="look at the groovy file" ID="ID_411352942"/>
</node>
</node>
<node TEXT="script logic" FOLDED="true" ID="ID_555265321">
<node TEXT="- it works on the selected node(s)" ID="ID_1604346896"/>
<node TEXT="(1) - if node has" ID="ID_653154403">
<node TEXT="" ID="ID_1608332519">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="a link to a file" ID="ID_957059637"/>
<node TEXT="and" ID="ID_100934665"/>
<node TEXT="its extension is &apos;listed as accepted&apos; by the user" ID="ID_1624494507"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      look inside the script
    </p>
    <p>
      
    </p>
    <p>
      there is a list of strings with the extensions you 'accept' to be opened by notepad++
    </p>
    <p>
      
    </p>
    <p>
      (it is only to avoid opening binary, jpg, pdf,excel, etc files in N++ accidentally)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="" ID="ID_690373046">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="--&gt; opens file in Notepad ++" ID="ID_747382340"/>
</node>
</node>
<node TEXT="else" ID="ID_1719755852">
<node TEXT="(2) - if the node has a note" ID="ID_1733739007">
<node TEXT="- looks in node if extension is defined" ID="ID_1381731412">
<node TEXT="looks if it has attribute with extension string" ID="ID_1529022625"/>
<node TEXT="looks if node details begins with &apos;.&apos;" ID="ID_1091670878">
<node TEXT="--&gt; first word  after the &apos;.&apos; must be the extension" ID="ID_354447493"/>
</node>
<node TEXT="looks if node text ends with an extension" ID="ID_348303558"/>
<node TEXT="if not then null" ID="ID_437484794"/>
</node>
<node TEXT="- if extension is null" ID="ID_237328090">
<node TEXT="- if the note begins with &quot;//.&quot;" ID="ID_1824371215"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this part is only for backwards compability with my own maps. not needed for new maps
    </p>
  </body>
</html></richcontent>
<node TEXT="--&gt;  the first word after that is the extension of the temp file to createChild" ID="ID_405744788"/>
<node TEXT="else extension =&apos;txt&apos;" ID="ID_158613085"/>
</node>
</node>
<node TEXT="- if the extension == &apos;groovy&apos;" ID="ID_1730431207">
<node TEXT="--&gt;" ID="ID_1844404510">
<node TEXT="- tempfile should be created in /userDirectory/scripts folder" ID="ID_860489083"/>
<node TEXT="- add a first line to the text indicating ExecutionMode" ID="ID_1549004961"/>
</node>
</node>
<node TEXT="- set the extension value in the node for future uses" ID="ID_1770553495"/>
<node TEXT="- take the note text and create (or overwrite) the tempfile appending the extension to the file&apos;s name" ID="ID_1695799053"/>
<node TEXT="- open it in Notepad ++" ID="ID_1531927186"/>
</node>
</node>
<node TEXT="else" ID="ID_1891080716">
<node TEXT="(3) case node has" ID="ID_1016994575">
<node TEXT="" ID="ID_1266013017">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT=" no link" ID="ID_880372124"/>
<node TEXT="and" ID="ID_179171637"/>
<node TEXT="no note" ID="ID_1013138817"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      no note) (**)
    </p>
    <p>
      
    </p>
    <p>
      (**) I did it this way to not accidentaly overwrite a note that has a script with an other text. This way I can edit the script in N++ and load the last version as a new child.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="" ID="ID_1629094572">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="--&gt;" ID="ID_669535441">
<node TEXT="- looks in node if extension is defined" ID="ID_1260325182">
<node TEXT="looks if it has attribute with extension string" ID="ID_1218617706"/>
<node TEXT="looks if node details begins with &apos;.&apos;" ID="ID_916962624">
<node TEXT="--&gt; first word  after the &apos;.&apos; must be the extension" ID="ID_1622452233"/>
</node>
<node TEXT="looks if node text ends with an extension" ID="ID_111829438"/>
<node TEXT="if not then &apos;txt&apos;" ID="ID_1339599182"/>
</node>
<node TEXT="- if file doesn&apos;t exist, creates it and adds default text" ID="ID_1649820816"/>
<node TEXT="- add a child to the selected node" ID="ID_1972483938"/>
<node TEXT="- take the text of the last saved myTempFile.extension and put it in the new node&apos;s note&#xa;(if groovy: without the first line where the executionmode is indicated)" ID="ID_1167585906"/>
<node TEXT="- set the extension value in the node for future uses" ID="ID_1186379094"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="using it" FOLDED="true" ID="ID_1765245825">
<node TEXT="here are some examples. just apply the script on any of this sibling nodes (the green ones).&#xa;the explanation of what happens is in its child nodes" ID="ID_1492025726"/>
<node TEXT="Temp tables in .SQL" ID="ID_668699212" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      --.sql
    </p>
    <p>
      
    </p>
    <p>
      -- elimina tabla temporal si ya existe
    </p>
    <p>
      IF(OBJECT_ID('tempdb..#MiTablaTemporal') IS NOT NULL) BEGIN DROP TABLE #MiTablaTemporal END
    </p>
    <p>
      
    </p>
    <p>
      -- crea tabla temporal y la carga con datos filtrados desde la tabla &quot;TablePruebaExist&quot;
    </p>
    <p>
      SELECT *
    </p>
    <p>
      INTO #MiTablaTemporal
    </p>
    <p>
      FROM TablePruebaExist
    </p>
    <p>
      WHERE VAL IN (1,3)
    </p>
    <p>
      
    </p>
    <p>
      -- muestra datos de tabla temporal
    </p>
    <p>
      SELECT *
    </p>
    <p>
      FROM #MiTablaTemporal
    </p>
    <p>
      
    </p>
    <p>
      -- finalmente elimina la tabla temporal
    </p>
    <p>
      DROP TABLE #MiTablaTemporal
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&lt;-- has a note and the node&apos;s text ends with &apos;.sql&apos;" ID="ID_31262320">
<node TEXT="--&gt; copies the note&apos;s text into a sql file and opens it in N++" ID="ID_1475378807"/>
<node TEXT="marks the node as a sql file for future uses" ID="ID_683909751"/>
</node>
</node>
<node TEXT="nodo.sql" ID="ID_524925149" BACKGROUND_COLOR="#ccff99">
<node TEXT="&lt;-- has no note and the node&apos;s text ends with &apos;.sql&apos;" ID="ID_1659438816">
<node TEXT="--&gt; copies the text from the .sql file into a new child node&apos;s note" ID="ID_146389934"/>
<node TEXT="marks the child node as a sql file for future uses" ID="ID_426074207"/>
</node>
</node>
<node TEXT="" ID="ID_150994753">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="nodo" ID="ID_517343389" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .sql
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="nodo" ID="ID_521208320" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .sql and other words
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="nodo" ID="ID_1989915580" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .sql
    </p>
    <p>
      and other words
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="" ID="ID_137573382">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="&lt;-- has no note and the node&apos;s details starts with &apos;.sql&apos;" ID="ID_913507678">
<node TEXT="--&gt; copies the text from the .sql file into a new child node&apos;s note" ID="ID_209023236"/>
<node TEXT="marks the child node as a sql file for future uses" ID="ID_192652148"/>
</node>
</node>
<node TEXT="Temp tables in .SQL" ID="ID_1576419220" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      --.sql
    </p>
    <p>
      
    </p>
    <p>
      -- elimina tabla temporal si ya existe
    </p>
    <p>
      IF(OBJECT_ID('tempdb..#MiTablaTemporal') IS NOT NULL) BEGIN DROP TABLE #MiTablaTemporal END
    </p>
    <p>
      
    </p>
    <p>
      -- crea tabla temporal y la carga con datos filtrados desde la tabla &quot;TablePruebaExist&quot;
    </p>
    <p>
      SELECT *
    </p>
    <p>
      INTO #MiTablaTemporal
    </p>
    <p>
      FROM TablePruebaExist
    </p>
    <p>
      WHERE VAL IN (1,3)
    </p>
    <p>
      
    </p>
    <p>
      -- muestra datos de tabla temporal
    </p>
    <p>
      SELECT *
    </p>
    <p>
      FROM #MiTablaTemporal
    </p>
    <p>
      
    </p>
    <p>
      -- finalmente elimina la tabla temporal
    </p>
    <p>
      DROP TABLE #MiTablaTemporal
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      details used for other information
    </p>
  </body>
</html></richcontent>
<node TEXT="&lt;-- has a note and the node&apos;s text ends with &apos;.sql&apos;" ID="ID_986530182">
<node TEXT="--&gt; copies the note&apos;s text into a sql file and opens it in N++" ID="ID_844893371"/>
<node TEXT="marks the node as a sql file for future uses" ID="ID_1064056355">
<node TEXT="can&apos;t use details" ID="ID_1164627462"/>
<node TEXT="adds an attribute" ID="ID_1069920123"/>
</node>
</node>
</node>
<node TEXT="node" FOLDED="true" ID="ID_877473369" BACKGROUND_COLOR="#ccff99">
<attribute NAME="file_ext" VALUE="sql"/>
<node TEXT="&lt;-- has no note and has attribute defining extension text" ID="ID_215716638">
<node TEXT="--&gt; copies the text from the .sql file into a new child node&apos;s note" ID="ID_1137873927"/>
<node TEXT="marks the child node as a sql file for future uses" ID="ID_929676264"/>
</node>
</node>
<node TEXT="nodo" ID="ID_1408834588" BACKGROUND_COLOR="#ccff99">
<node TEXT="&lt;--- this node has no link nor note nor file extension definition" ID="ID_1369361575">
<node TEXT="--&gt; thinks its a txt and copies the text from the file to the note" ID="ID_131575443"/>
</node>
</node>
</node>
<node TEXT="first time with a groovy script" FOLDED="true" ID="ID_1642018419">
<node TEXT="select this node --&gt;" ID="ID_1899471111" NUMBERED="true">
<font BOLD="true"/>
<node TEXT="Groovy Temp Script" ID="ID_1689576679"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage('selected node text = ' + node.text)
    </p>
    <p>
      
    </p>
    <p>
      def userDir = c.userDirectory.path
    </p>
    <p>
      
    </p>
    <p>
      def nodoResult = node.createChild(&quot;resultado de script&quot;)
    </p>
    <p>
      nodoResult.noteText = 'the path to your user directory is : \n\n' + userDir
    </p>
    <p>
      c.select(nodoResult)
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
    <p>
      for the next step it must stay selected
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="and execute the &quot;open with Notepad++&quot; script" ID="ID_1565046122" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      select it from the menu or ...
    </p>
  </body>
</html></richcontent>
<node TEXT="Open with Notepad++ on selected node" ID="ID_1747272277" ICON_SIZE="40 pt" LINK="menuitem:_OpenWithNotepad++_on_selected_node"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      click this button
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the node you want to open in Notepad++ must stay selected!!!
    </p>
    <p>
      
    </p>
    <p>
      take care to click this button without selecting this node
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="it opens in Freeplane, but just close it this time" ID="ID_143875946" NUMBERED="true"/>
<node TEXT="close and reopen Freeplane" ID="ID_1553385728" NUMBERED="true"/>
<node TEXT="the second script appears in the menu" ID="ID_168268620"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this is going to be the menu option you can use to execute your temp scripts from now on
    </p>
  </body>
</html></richcontent>
<node TEXT="/main_menu/ScriptsEdo/GroovyTempScript" ID="ID_412220651"/>
</node>
<node TEXT="Test" ID="ID_795393342" NUMBERED="true">
<node TEXT="execute this second script" ID="ID_1892086067"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      select it from the menu or ...
    </p>
  </body>
</html></richcontent>
<node TEXT="Apply Groovy Temp script on selected node" ID="ID_1945824812" ICON_SIZE="40 pt" LINK="menuitem:_MyTempFile_on_single_node"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      click this button
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the node you want to be processed by your temp script must stay selected!!!
    </p>
    <p>
      
    </p>
    <p>
      take care to click this button without selecting this node
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="the script that was just a Note in a node has been executed!!" ID="ID_633471097"/>
</node>
</node>
<node TEXT="how I use it" FOLDED="true" ID="ID_1749816036">
<node TEXT="I use this scripts to have in one map my little scripts and sql test and to not have a lot of files in the disk where I forget them and have problems to find them again" ID="ID_1802883405"/>
<node TEXT="use case Groovy scripts:" FOLDED="true" ID="ID_1608862163">
<node TEXT="tutorial" ID="ID_153739707">
<node TEXT="let&apos;s imagine you wan´t to make a test" ID="ID_1518168576"/>
<node TEXT="1. select this node and apply the &quot;Open with Notepad ++&quot; script" ID="ID_1654560672"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="it inserted a child node with the actual text of the groovy file" ID="ID_732354952"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      because the node you selected had no Link and no Note
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="2. select it (if it isn&apos;t allready selected)" ID="ID_253755407"/>
<node TEXT="3. apply Open with Notepad ++ on it" ID="ID_1807396228"/>
<node TEXT="now it opens it in N++" ID="ID_1119645915"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      because the node had a Note
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="4. modify it to your needs (in N++)&#xa;and saved it" ID="ID_1149477409">
<node TEXT="if you don&apos;t know what to do now, here is an idea:" ID="ID_1429434286">
<node TEXT="delete the content after the line 3" ID="ID_110547482"/>
<node TEXT="copy the text from the note of this node in the file in Notepad++ at the end of it" ID="ID_1259420332"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      def suma(a,b)= {
    </p>
    <p>
      a+b
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage('13+23 = ' + suma(13,23).toString())
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="save it" ID="ID_600409995"/>
</node>
<node TEXT="5. execute the script if it works" ID="ID_308295420"/>
<node TEXT="6 import it as a note" ID="ID_1810267914">
<node TEXT="select this node --&gt;" ID="ID_1221568427">
<node TEXT="my test:" ID="ID_1877002037"/>
</node>
<node TEXT="apply Open with Notepad ++ on it" ID="ID_231084240"/>
</node>
<node TEXT="And that&apos;s how I manage my little scrpts collection" ID="ID_1214726140"/>
</node>
</node>
<node TEXT="I added keyboard&apos;s shortcuts to this two menus for me" FOLDED="true" ID="ID_845973626"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this way going to N++ back and forth is very agile
    </p>
  </body>
</html></richcontent>
<node TEXT="ctrl +shft + +" ID="ID_159350497"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;open with Notepad++&quot; script
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="ctrl + shft + m" ID="ID_1623627792"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;my Temp File&quot; script
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="use case SQL" FOLDED="true" ID="ID_660534745">
<node TEXT="my example" ID="ID_211248029">
<node TEXT="Temp tables in .SQL" ID="ID_709232908"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      --.sql
    </p>
    <p>
      
    </p>
    <p>
      -- elimina tabla temporal si ya existe
    </p>
    <p>
      IF(OBJECT_ID('tempdb..#MiTablaTemporal') IS NOT NULL) BEGIN DROP TABLE #MiTablaTemporal END
    </p>
    <p>
      
    </p>
    <p>
      -- crea tabla temporal y la carga con datos filtrados desde la tabla &quot;TablePruebaExist&quot;
    </p>
    <p>
      SELECT *
    </p>
    <p>
      INTO #MiTablaTemporal
    </p>
    <p>
      FROM TablePruebaExist
    </p>
    <p>
      WHERE VAL IN (1,3)
    </p>
    <p>
      
    </p>
    <p>
      -- muestra datos de tabla temporal
    </p>
    <p>
      SELECT *
    </p>
    <p>
      FROM #MiTablaTemporal
    </p>
    <p>
      
    </p>
    <p>
      -- finalmente elimina la tabla temporal
    </p>
    <p>
      DROP TABLE #MiTablaTemporal
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="apply Open with Notepad ++ on it" ID="ID_936090371"/>
</node>
</node>
<node TEXT="use case file with links" FOLDED="true" ID="ID_1752583887">
<node TEXT="when you have a node with a link to a file like this one" ID="ID_941263064">
<node TEXT="myTempFile.txt" ID="ID_282911" LINK="file:/C:/Temp/myTempFile.txt"/>
</node>
<node TEXT="you can select it and open it with notepad++" ID="ID_1566922055"/>
<node TEXT="in this case it won&apos;t work cause this file is in my computer, not in yours, but you can test it with one of your own." ID="ID_1594428052"/>
</node>
</node>
<node TEXT="example video" FOLDED="true" ID="ID_505521985">
<node TEXT="youtube video with an sql example" ID="ID_757408180" LINK="https://youtu.be/GTYWBa4EUFk"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      has no Audio, but it helps to get an idea
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="LastLoggedError.groovy" ID="ID_1754657241">
<node TEXT="it shows the last lines from the log.0 file where Freeplane logs errors and other events" ID="ID_47952164"/>
</node>
<node TEXT="myTempFile.groovy" ID="ID_621153400"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      // library taken from https://github.com/cevin15/MDTool
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      import com.youbenzi.mdtool.tool.MDTool;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def markdown_content = node.note.plain
    </p>
    <p>
      def texto = MDTool.markdown2Html(markdown_content);
    </p>
    <p>
      
    </p>
    <p>
      def nodoMD = node.createChild('formated')
    </p>
    <p>
      
    </p>
    <p>
      nodoMD.noteText = &quot;&lt;html&gt;&lt;body&gt;&quot; + texto + &quot;&lt;/body&gt;&lt;/html&gt;&quot;
    </p>
    <p>
      nodoMD.details = 'markdownToHtml'
    </p>
    <p>
      c.select(nodoMD)
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="66.75 pt" VALUE_WIDTH="115.5 pt"/>
<node TEXT="initial My Temp File" ID="ID_297880224"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      def texto = &quot; This is just the initial 'My Temp File' groovy script \n\n It does nothing more than showing this message &quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="66.75 pt" VALUE_WIDTH="115.5 pt"/>
</node>
</node>
</node>
<node TEXT="Example: MarkdownTo HTML" FOLDED="true" POSITION="bottom_or_right" ID="ID_1555513226">
<edge COLOR="#007c00"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      an other example
    </p>
  </body>
</html></richcontent>
<node TEXT="description" ID="ID_22331393"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      this example script takes a note that has been written using the Markdown convention and copies it in another note using html formating.
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      open the note panel for this example
    </p>
  </body>
</html></richcontent>
<node TEXT="in menu View / Notes / Display note panel" ID="ID_1954660040"/>
<node TEXT=".. or clicking this button" ID="ID_1189271142" ICON_SIZE="24 pt" LINK="menuitem:_ShowHideNoteAction"/>
</node>
<node TEXT="Install the MDTool library in Freeplane" FOLDED="true" ID="ID_1191180546"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      the example script needs this library
    </p>
  </body>
</html></richcontent>
<node TEXT="get MDTool library" ID="ID_383552204">
<node TEXT="MDTool project" ID="ID_761716332">
<node TEXT="cevin15/MDTool" ID="ID_20510864" LINK="https://github.com/cevin15/MDTool"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      github.com
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="download the last jar file from there:" ID="ID_1167522396">
<node ID="ID_1652264991" LINK="https://github.com/cevin15/MDTool/tree/master/download">
<icon BUILTIN="emoji-1F4C2"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="js-navigation-open link-gray-dark" title="download" id="fd456406745d816a45cae554c788e754-cf811c02a959fd92fe1d3e04e15e789d6a9afa2e" href="https://github.com/cevin15/MDTool/tree/master/download">MDTool/download/</a>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="this is the link to directly download the version I downloaded" ID="ID_557841393">
<node ID="ID_1647473269" LINK="https://github.com/cevin15/MDTool/raw/master/download/MDTool-1.2.4.jar"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="btn btn-sm BtnGroup-item " href="https://github.com/cevin15/MDTool/raw/master/download/MDTool-1.2.4.jar" id="raw-url" role="button">Download MDTool-1.2.4.jar</a>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Install the MDTool library" ID="ID_1833820644">
<node TEXT="copy (or move) the jar file you just dowloaded into your lib folder in your freeplane user directory" ID="ID_1923764037">
<node TEXT="open your user directory" ID="ID_1172093880" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="in there you can see your &apos;lib&apos; folder" ID="ID_1243318831" NUMBERED="true"/>
<node TEXT="copy the file &apos;MDTool-xxx.jar&apos; in there" ID="ID_305369087" NUMBERED="true"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      'xxx' is the version you downladed
    </p>
    <p>
      in my case was MDTool-1.2.4.jar
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="close and reopen Freeplane" ID="ID_788992247">
<node TEXT="this way it can &quot;see it&quot;" ID="ID_277980240"/>
</node>
</node>
<node TEXT="save the script as groovy temp file" ID="ID_1859994285">
<node TEXT="This node has the script as text in it&apos;s note --&gt;" ID="ID_1136733817">
<node TEXT="markdown2Html" ID="ID_73276339"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      // library taken from https://github.com/cevin15/MDTool
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      import com.youbenzi.mdtool.tool.MDTool;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def markdown_content = node.note.plain
    </p>
    <p>
      def texto = MDTool.markdown2Html(markdown_content);
    </p>
    <p>
      
    </p>
    <p>
      def nodoMD = node.createChild('formated')
    </p>
    <p>
      
    </p>
    <p>
      nodoMD.noteText = &quot;&lt;html&gt;&lt;body&gt;&quot; + texto + &quot;&lt;/body&gt;&lt;/html&gt;&quot;
    </p>
    <p>
      nodoMD.details = 'markdownToHtml'
    </p>
    <p>
      c.select(nodoMD)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="select it" ID="ID_627117934" LINK="#ID_73276339"/>
<node TEXT="apply the &quot;note to file&quot; script" ID="ID_1509943706">
<node TEXT="select it from the menú ..." ID="ID_593219457"/>
<node TEXT="... or click on the button in this node" ID="ID_121595183" ICON_SIZE="24 pt" LINK="menuitem:_NoteToFile_on_selected_node"/>
</node>
<node TEXT="it was saved as the menú option" ID="ID_771715806">
<node TEXT="Scripts_Edo" ID="ID_1879452131">
<node TEXT="Note To File" ID="ID_112590740">
<node TEXT="My Temp File" ID="ID_1443359748"/>
</node>
</node>
</node>
</node>
<node TEXT="test using the script:" FOLDED="true" ID="ID_1088829981">
<node TEXT="select this node --&gt;" ID="ID_1390721185" LINK="#ID_413230106"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      it has a Note in Markdown
    </p>
  </body>
</html></richcontent>
<node TEXT="README.md" ID="ID_413230106"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # Freeplane note to file
    </p>
    <p>
      
    </p>
    <p>
      groovy scripts to use node's notes as textfiles
    </p>
    <p>
      
    </p>
    <p>
      ## OpenWithNotepad++.groovy
    </p>
    <p>
      
    </p>
    <p>
      ### Description
    </p>
    <p>
      
    </p>
    <p>
      Script for Freeplane to open files or node's notes as files in Notepad++
    </p>
    <p>
      
    </p>
    <p>
      ### it works this way
    </p>
    <p>
      
    </p>
    <p>
      * if node
    </p>
    <p>
      * has a link to a file --&gt;
    </p>
    <p>
      * it opens the file in N++
    </p>
    <p>
      * has a note --&gt;
    </p>
    <p>
      * saves it as a textfile and opens it in N++
    </p>
    <p>
      * if it's a groovy script
    </p>
    <p>
      * it saves it in the user's scripts folder
    </p>
    <p>
      * if not
    </p>
    <p>
      * it saves it in a default folder
    </p>
    <p>
      * has no link nor note --&gt;
    </p>
    <p>
      * takes text from last groovy script tempFile and brings it as a note
    </p>
    <p>
      
    </p>
    <p>
      ## NoteToFile.groovy
    </p>
    <p>
      
    </p>
    <p>
      ## FileToNode.groovy
    </p>
    <p>
      
    </p>
    <p>
      ## LastLoggedError.groovy
    </p>
    <p>
      
    </p>
    <p>
      ## more information
    </p>
    <p>
      
    </p>
    <p>
      more information in the OpenWithNotepad++.mm Freeplane file
    </p>
    <p>
      
    </p>
    <p>
      and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      initial version of the readme file in this project
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="apply the script selecting it from the menú" ID="ID_257979881">
<node TEXT="... or click this button" ID="ID_1304989382" ICON_SIZE="24 pt" LINK="menuitem:_MyTempFile_on_single_node"/>
</node>
<node TEXT="expected example result --&gt;" FOLDED="true" ID="ID_1520542521"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      it adds a child node to the selected one and if you open it's note, it looks formated
    </p>
  </body>
</html></richcontent>
<node TEXT="README.md" ID="ID_767020107"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # Freeplane note to file
    </p>
    <p>
      
    </p>
    <p>
      groovy scripts to use node's notes as textfiles
    </p>
    <p>
      
    </p>
    <p>
      ## OpenWithNotepad++.groovy
    </p>
    <p>
      
    </p>
    <p>
      ### Description
    </p>
    <p>
      
    </p>
    <p>
      Script for Freeplane to open files or node's notes as files in Notepad++
    </p>
    <p>
      
    </p>
    <p>
      ### it works this way
    </p>
    <p>
      
    </p>
    <p>
      * if node
    </p>
    <p>
      * has a link to a file --&gt;
    </p>
    <p>
      * it opens the file in N++
    </p>
    <p>
      * has a note --&gt;
    </p>
    <p>
      * saves it as a textfile and opens it in N++
    </p>
    <p>
      * if it's a groovy script
    </p>
    <p>
      * it saves it in the user's scripts folder
    </p>
    <p>
      * if not
    </p>
    <p>
      * it saves it in a default folder
    </p>
    <p>
      * has no link nor note --&gt;
    </p>
    <p>
      * takes text from last groovy script tempFile and brings it as a note
    </p>
    <p>
      
    </p>
    <p>
      ## NoteToFile.groovy
    </p>
    <p>
      
    </p>
    <p>
      ## FileToNode.groovy
    </p>
    <p>
      
    </p>
    <p>
      ## LastLoggedError.groovy
    </p>
    <p>
      
    </p>
    <p>
      ## more information
    </p>
    <p>
      
    </p>
    <p>
      more information in the OpenWithNotepad++.mm Freeplane file
    </p>
    <p>
      
    </p>
    <p>
      and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      initial version of the readme file in this project
    </p>
  </body>
</html></richcontent>
<node TEXT="formated" ID="ID_1821169408"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <h1>
      Freeplane note to file
    </h1>
    <p>
      groovy scripts to use node's notes as textfiles
    </p>
    <h2>
      OpenWithNotepad++.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      Script for Freeplane to open files or node's notes as files in Notepad++
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <ul>
      <li>
        if node

        <ul>
          <li>
            has a link to a file --&gt;

            <ul>
              <li>
                it opens the file in N++
              </li>
            </ul>
          </li>
          <li>
            has a note --&gt;

            <ul>
              <li>
                saves it as a textfile and opens it in N++
              </li>
              <li>
                if it's a groovy script

                <ul>
                  <li>
                    it saves it in the user's scripts folder
                  </li>
                </ul>
              </li>
              <li>
                if not

                <ul>
                  <li>
                    it saves it in a default folder
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li>
            has no link nor note --&gt;

            <ul>
              <li>
                takes text from last groovy script tempFile and brings it as a note
              </li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
    <h2>
      NoteToFile.groovy
    </h2>
    <p>
      
    </p>
    <h2>
      FileToNode.groovy
    </h2>
    <p>
      
    </p>
    <h2>
      LastLoggedError.groovy
    </h2>
    <p>
      
    </p>
    <h2>
      more information
    </h2>
    <p>
      more information in the OpenWithNotepad++.mm Freeplane file
    </p>
    <p>
      and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      markdownToHtml
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Conclusion:" FOLDED="true" ID="ID_615396889">
<node TEXT="you could take a script that was written in a node&apos;s note and run it as a tempfile." ID="ID_1033947210"/>
</node>
</node>
<node TEXT="README.md" FOLDED="true" POSITION="top_or_left" ID="ID_1232301190" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_note_to_file/README.md"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # Freeplane note to file
    </p>
    <p>
      
    </p>
    <p>
      groovy scripts to use node's notes as textfiles
    </p>
    <p>
      
    </p>
    <p>
      The NoteToFile.mm (Freeplane map) has a better and detailed explanation about this scripts and how they work.
    </p>
    <p>
      
    </p>
    <p>
      ## NoteToFile.groovy
    </p>
    <p>
      
    </p>
    <p>
      ### Description
    </p>
    <p>
      
    </p>
    <p>
      Saves the note's text from the selected node to a file (it doesn't open another application (for exmple Notepad++))
    </p>
    <p>
      
    </p>
    <p>
      ### it works this way
    </p>
    <p>
      
    </p>
    <p>
      if node has a note --&gt;
    </p>
    <p>
      if node has a link to a existing file --&gt;
    </p>
    <p>
      save note to file
    </p>
    <p>
      else
    </p>
    <p>
      if node has a defined extension
    </p>
    <p>
      save note to temp file
    </p>
    <p>
      
    </p>
    <p>
      ## FileToNode.groovy
    </p>
    <p>
      
    </p>
    <p>
      ### Description
    </p>
    <p>
      
    </p>
    <p>
      imports a file as text into the selected node's note
    </p>
    <p>
      
    </p>
    <p>
      (it doesn't open another application (or Notepad++))
    </p>
    <p>
      
    </p>
    <p>
      ### it works this way
    </p>
    <p>
      
    </p>
    <p>
      if node has a link to an existing file
    </p>
    <p>
      if extension from file is an &quot;accepted file extension&quot;
    </p>
    <p>
      --&gt; copies file text into note
    </p>
    <p>
      else
    </p>
    <p>
      if node has a defined extension
    </p>
    <p>
      --&gt; copies text from temp file with same extension into note
    </p>
    <p>
      
    </p>
    <p>
      ## OpenWithNotepad++.groovy
    </p>
    <p>
      
    </p>
    <p>
      ### Description
    </p>
    <p>
      
    </p>
    <p>
      Script for Freeplane to open files or node's notes as files in Notepad++
    </p>
    <p>
      
    </p>
    <p>
      ### it works this way
    </p>
    <p>
      
    </p>
    <p>
      if node
    </p>
    <p>
      has a link to a file --&gt;
    </p>
    <p>
      it opens the file in N++
    </p>
    <p>
      has a note --&gt;
    </p>
    <p>
      saves it as a textfile and opens it in N++
    </p>
    <p>
      if it's a groovy script
    </p>
    <p>
      it saves it in the user's scripts folder
    </p>
    <p>
      if not
    </p>
    <p>
      it saves it in a default folder
    </p>
    <p>
      has no link nor note --&gt;
    </p>
    <p>
      takes text from last groovy script tempFile and brings it as a note
    </p>
    <p>
      
    </p>
    <p>
      ## LastLoggedError.groovy
    </p>
    <p>
      
    </p>
    <p>
      it shows the last lines from the log.0 file where Freeplane logs errors and other events
    </p>
    <p>
      
    </p>
    <p>
      ## more information
    </p>
    <p>
      
    </p>
    <p>
      more information in the OpenWithNotepad++.mm Freeplane file
    </p>
    <p>
      
    </p>
    <p>
      and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#007c00"/>
<node TEXT="formated" ID="ID_654376663"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <h1>
      Freeplane note to file
    </h1>
    <p>
      groovy scripts to use node's notes as textfiles
    </p>
    <p>
      The NoteToFile.mm (Freeplane map) has a better and detailed explanation about this scripts and how they work.
    </p>
    <h2>
      NoteToFile.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      Saves the note's text from the selected node to a file (it doesn't open another application (for exmple Notepad++))
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <pre><code>    if node has a note --&gt;
      if node has a link to a existing file --&gt;
        save note to file
    else
      if node has a defined extension
        save note to temp file</code></pre>
    <h2>
      FileToNode.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      imports a file as text into the selected node's note
    </p>
    <p>
      (it doesn't open another application (or Notepad++))
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <pre><code>    if node has a link to an existing file
      if extension from file is an &quot;accepted file   extension&quot;
        --&gt; copies file text into note
    else
      if node has a defined extension
        --&gt; copies text from temp file with same extension into note</code></pre>
    <h2>
      OpenWithNotepad++.groovy
    </h2>
    <p>
      
    </p>
    <h3>
      Description
    </h3>
    <p>
      Script for Freeplane to open files or node's notes as files in Notepad++
    </p>
    <h3>
      it works this way
    </h3>
    <p>
      
    </p>
    <pre><code>    if node
      has a link to a file --&gt;
        it opens the file in N++
      has a note --&gt;
        saves it as a textfile and opens it in N++
        if it's a groovy script
          it saves it in the user's scripts folder
        if not
          it saves it in a default folder
      has no link nor note --&gt;
        takes text from last groovy script tempFile and brings it as a note</code></pre>
    <h2>
      LastLoggedError.groovy
    </h2>
    <p>
      it shows the last lines from the log.0 file where Freeplane logs errors and other events
    </p>
    <h2>
      more information
    </h2>
    <p>
      more information in the OpenWithNotepad++.mm Freeplane file
    </p>
    <p>
      and video (without audio. sorry) here: https://youtu.be/GTYWBa4EUFk
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      markdownToHtml
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
