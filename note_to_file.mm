<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Note to File" FOLDED="false" ID="ID_889872586" CREATED="1595532534890" MODIFIED="1596835528478" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_icon_for_attributes="true" show_note_icons="true" show_notes_in_map="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
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
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
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
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
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
<node TEXT="definitions" POSITION="right" ID="ID_162059596" CREATED="1596812359139" MODIFIED="1596835922086">
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
</html>

</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      used in this map for explain
    </p>
  </body>
</html>

</richcontent>
<node TEXT="text file" FOLDED="true" ID="ID_180563109" CREATED="1596812371149" MODIFIED="1596835674255"><richcontent TYPE="NOTE">

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
</html>

</richcontent>
<node TEXT="a file that has text in it" ID="ID_1116377176" CREATED="1596812539015" MODIFIED="1596812556064"/>
<node TEXT="it doesn&apos;t need to be a txt file" ID="ID_22663723" CREATED="1596812559702" MODIFIED="1596812637906"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      like 'exampleFile.txt'
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="for example, .sql, .groovy, .java, .config ,.xml files are also for this definition text files" ID="ID_1089483885" CREATED="1596812638631" MODIFIED="1596812778753"/>
<node TEXT="an easy test is if the file can be opened in the notepad aplication or another text editor (and its human readable)" ID="ID_1133778450" CREATED="1596812684760" MODIFIED="1596812746232"/>
<node TEXT="I defined some extensions as text files in the NTF library" ID="ID_323928511" CREATED="1596812795842" MODIFIED="1596812855664">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1565157321" STARTINCLINATION="601;0;" ENDINCLINATION="601;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="temp file" FOLDED="true" ID="ID_929572360" CREATED="1596812862444" MODIFIED="1596835870076"><richcontent TYPE="NOTE">

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
</html>

</richcontent>
<node TEXT="when the node has no link to a file, the note&apos;s text is readed or written to a temporary file" ID="ID_1184155790" CREATED="1596812872946" MODIFIED="1596835700808"/>
<node TEXT="this file is in a folder defined by the user" ID="ID_634390692" CREATED="1596812937186" MODIFIED="1596812951810">
<node TEXT="defined in the NTF.groovy file" ID="ID_1431269469" CREATED="1596812953104" MODIFIED="1596812972327"/>
</node>
<node TEXT="it creates a new temp file for every diferent extension type (if needed)" ID="ID_1507486453" CREATED="1596812976049" MODIFIED="1596813039528"/>
<node ID="ID_579388554" CREATED="1596813041529" MODIFIED="1596835756118"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      but for any extension type it creates only <u>one</u>&nbsp;temporary file
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="when another note with the same extension has to be saved, it saves it on the same temp file, overwriting its previous content." ID="ID_1963987717" CREATED="1596813083783" MODIFIED="1596835824388">
<node TEXT="this way the folder doesn&apos;t get full with useless tempfiles" ID="ID_1595286276" CREATED="1596813280450" MODIFIED="1596813395541"/>
<node TEXT="the information stays in the node&apos;s notes and can be updated there" ID="ID_450021229" CREATED="1596813402472" MODIFIED="1596813433292"/>
<node TEXT="you don&apos;t need to look after the new temp files in other application if you export another node&apos;s note" ID="ID_366191838" CREATED="1596813440027" MODIFIED="1596813551489"/>
</node>
</node>
</node>
<node TEXT="install" FOLDED="true" POSITION="right" ID="ID_1460052182" CREATED="1595540236094" MODIFIED="1596733396996">
<edge COLOR="#007c7c"/>
<node TEXT="Install the NTF.groovy file as a library in Freeplane" FOLDED="true" ID="ID_681416454" CREATED="1596728756188" MODIFIED="1596734414230" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the other scripts need this library
    </p>
  </body>
</html>
</richcontent>
<node TEXT="copy the NTF.groovy file into your lib folder in your freeplane user directory" ID="ID_1738370560" CREATED="1596729200141" MODIFIED="1596734512443">
<node TEXT="open your user directory" ID="ID_170909371" CREATED="1595540288110" MODIFIED="1595540379802" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="in there you can see your &apos;lib&apos; folder" ID="ID_748841955" CREATED="1595540390955" MODIFIED="1596729321523" NUMBERED="true"/>
<node TEXT="open it" ID="ID_1450251750" CREATED="1596734531575" MODIFIED="1596734535566" NUMBERED="true"/>
<node TEXT="copy the file &apos;NTF.groovy&apos; in there" ID="ID_1608263458" CREATED="1595540462824" MODIFIED="1596734480862" NUMBERED="true"/>
</node>
</node>
<node TEXT="copy the other scripts into your scripts folder" FOLDED="true" ID="ID_808915544" CREATED="1595540247235" MODIFIED="1596734308141" NUMBERED="true">
<node TEXT="open your user directory" ID="ID_607663106" CREATED="1595540288110" MODIFIED="1596733396998" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="in there you can see your &apos;scripts&apos; folder" ID="ID_1573664807" CREATED="1595540390955" MODIFIED="1596733396999" NUMBERED="true"/>
<node TEXT="copy the groovy files in there" ID="ID_1326603284" CREATED="1595540462824" MODIFIED="1596734336022" NUMBERED="true"/>
</node>
<node TEXT="modify the NTF.groovy file for your use" FOLDED="true" ID="ID_655711305" CREATED="1595542807019" MODIFIED="1596734636607" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      define some variables for your system
    </p>
  </body>
</html>
</richcontent>
<node TEXT="constants you may need to change for the scrips to work" ID="ID_556966363" CREATED="1596735415202" MODIFIED="1596736315841">
<node TEXT="addressNpp" ID="ID_1162221139" CREATED="1595542948347" MODIFIED="1596809013364" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      // its the location where the Notepad++ executable is instaled
    </p>
  </body>
</html>
</richcontent>
<node TEXT="def addressNpp = &apos;C:\\Program Files\\Notepad++\\notepad++.exe&apos;" ID="ID_1181116457" CREATED="1595543372047" MODIFIED="1596735110390"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="mapFolders[&apos;xDefault&apos;]" ID="ID_833376978" CREATED="1595882625633" MODIFIED="1596811892204" STYLE="bubble">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1075915769" STARTINCLINATION="678;0;" ENDINCLINATION="678;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      inside method getFolderAndName
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      default path where temp files are going to be saved. this directory must exist (in my case 'C:/Temp/').
    </p>
  </body>
</html>
</richcontent>
<node TEXT="mapFolders[&apos;xDefault&apos;] = &apos;C:/Temp/&apos;" ID="ID_1954819345" CREATED="1596735638800" MODIFIED="1596735728651"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="constants you may want to change or add" ID="ID_1349234892" CREATED="1596735480065" MODIFIED="1596736333006">
<node TEXT="acceptedFileExtensions" ID="ID_1565157321" CREATED="1595542953438" MODIFIED="1596809013360" STYLE="bubble"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="def acceptedFileExtensions = [&apos;groovy&apos;, &apos;sql&apos;, &apos;txt&apos;, &apos;ini&apos;, &apos;cfg&apos;, &apos;md&apos;]" ID="ID_928801239" CREATED="1595543410789" MODIFIED="1596736057082"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case until now
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="mapFolders" ID="ID_556920426" CREATED="1595882625633" MODIFIED="1596809013348" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      map that relates extension to folderpath
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      inside method <b><u>getFolderAndName</u></b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="groovy : userDirectory/scripts/" ID="ID_1241376040" CREATED="1595882698882" MODIFIED="1596733397002"/>
<node TEXT="you can add others if you like,&#xa;adding more lines in there using the following format" ID="ID_1820721854" CREATED="1595882850334" MODIFIED="1596736581821">
<node TEXT="mapFolders[&apos;theFileExtension&apos;] = &apos;yourOwnPathForThisFileType/&apos;" ID="ID_974265252" CREATED="1596736173395" MODIFIED="1596736607370"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      it has to end with a slash
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="constants you can change, but you don&apos;t need to" ID="ID_1776286073" CREATED="1596735502036" MODIFIED="1596735519792">
<node TEXT="executionMode" ID="ID_1777931823" CREATED="1596735040083" MODIFIED="1596811881816" STYLE="bubble">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1435698012" STARTINCLINATION="635;0;" ENDINCLINATION="635;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
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
</html>
</richcontent>
<node TEXT="executionMode = &apos;// @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/NoteToFile&quot;})\n\n&apos;" ID="ID_127459783" CREATED="1596735027419" MODIFIED="1596735117693"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="attributeForExtensions" ID="ID_1858530808" CREATED="1596734910404" MODIFIED="1596809013343" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      name of the attribute to be added (when needed) to some of the nodes to specify file extension
    </p>
  </body>
</html>
</richcontent>
<node TEXT="attributeForExtensions = &apos;file_ext&apos;" ID="ID_1977785977" CREATED="1596734898914" MODIFIED="1596736440002"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in my case
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="fileName" ID="ID_1491015402" CREATED="1596735359736" MODIFIED="1596809013346" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      name to be used for&nbsp;the temp files
    </p>
  </body>
</html>
</richcontent>
<node TEXT="fileName = &apos;myTempFile&apos;" ID="ID_395464232" CREATED="1596735349563" MODIFIED="1596735349563"/>
</node>
</node>
</node>
<node TEXT="close and reopen Freeplane" ID="ID_1598293444" CREATED="1595540646267" MODIFIED="1596733397007" NUMBERED="true"/>
<node TEXT="the scripts appear in the menu" FOLDED="true" ID="ID_1360122568" CREATED="1595541799349" MODIFIED="1596809045360" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      / main_menu / ScriptsEdo / Note To File
    </p>
  </body>
</html>
</richcontent>
<node TEXT="NoteToFile_Menu.png" ID="ID_693352354" CREATED="1596808871400" MODIFIED="1596808871400">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_note_to_file/note_to_file_files/NoteToFile_Menu.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Add Keyboard Shortcuts (if you want to)" FOLDED="true" ID="ID_1893495902" CREATED="1596809063957" MODIFIED="1596810600741" NUMBERED="true">
<node TEXT="I use them myself as you can see here:" ID="ID_1490549884" CREATED="1596810024234" MODIFIED="1596810054294">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_693352354" STARTINCLINATION="245;0;" ENDINCLINATION="245;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="I have 2 monitors (notebook + external monitor) and I use Freeplane on the big one (on the right).&#xa;That&apos;s why my shorcuts for NoteToFile and FileToNote use the arrows keys. That way it feels very natural" ID="ID_1779070113" CREATED="1596810100577" MODIFIED="1596810538926">
<node TEXT="NoteToFile.groovy" ID="ID_1648884605" CREATED="1596481280430" MODIFIED="1596810585080" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Alt + Left arrow
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="FileToNote.groovy" ID="ID_722436589" CREATED="1596481280418" MODIFIED="1596810585096" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Alt + Right arrow
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="OpenWithNotepad++" ID="ID_1477325326" CREATED="1596727985072" MODIFIED="1596810585103" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Shft + +
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="MyTempFile" ID="ID_1125690732" CREATED="1596810397557" MODIFIED="1596810585104" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ctrl + Shft + M
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="adding keyboard shorcuts in Freeplane is very easy.&#xa;Just do this few step" ID="ID_1980339850" CREATED="1596809105047" MODIFIED="1596809153345">
<node TEXT="open the menú where the command is" ID="ID_800859812" CREATED="1596809155188" MODIFIED="1596809197580"/>
<node TEXT="press the Ctrl key in your keyboard when clicking on the command with the mouse" ID="ID_1001711293" CREATED="1596809202832" MODIFIED="1596809990011"/>
<node TEXT="it appears the &apos;enter new key&apos; form where you can assign a keystroke for the command" ID="ID_605749348" CREATED="1596809241649" MODIFIED="1596809997672"/>
</node>
<node TEXT="or ..." ID="ID_1898029197" CREATED="1596809818727" MODIFIED="1596809829393">
<node TEXT="go to the menu Tools / Assign Hot Keys" ID="ID_60007377" CREATED="1596809860693" MODIFIED="1596809899215"/>
</node>
<node TEXT="or ..." ID="ID_1595153354" CREATED="1596809818727" MODIFIED="1596809829393">
<node TEXT="or click this button" ID="ID_769163681" CREATED="1596809900127" MODIFIED="1596809946706" ICON_SIZE="28.0 pt" LINK="menuitem:_SetAcceleratorOnNextClickAction"/>
</node>
</node>
</node>
<node TEXT="Scripts" FOLDED="true" POSITION="right" ID="ID_1476340580" CREATED="1596733456792" MODIFIED="1596835563374">
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
</html>

</richcontent>
<node TEXT="NTF.groovy" ID="ID_987415585" CREATED="1596485893053" MODIFIED="1596736923951"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is a common library
    </p>
  </body>
</html>
</richcontent>
<node TEXT="library with common constants and methods" ID="ID_887780320" CREATED="1596736785040" MODIFIED="1596736904976"/>
<node ID="ID_808452146" CREATED="1596736822548" MODIFIED="1596810651975"><richcontent TYPE="NODE">

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
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_655711305" STARTINCLINATION="208;0;" ENDINCLINATION="208;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="NoteToFile.groovy" ID="ID_1419635768" CREATED="1596481280430" MODIFIED="1596733485863">
<node TEXT="description" FOLDED="true" ID="ID_1395278738" CREATED="1596810795681" MODIFIED="1596810800604">
<node TEXT="saves the note&apos;s text from the selected node to a file" ID="ID_1821845247" CREATED="1596810849029" MODIFIED="1596811968275"/>
<node TEXT="it doesn&apos;t open another application (or Notepad++)" ID="ID_703934626" CREATED="1596811985261" MODIFIED="1596812026394"/>
<node TEXT="general idea:" FOLDED="true" ID="ID_1375511796" CREATED="1596810888046" MODIFIED="1596811341540"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if node has a note --&gt;" ID="ID_1117572894" CREATED="1596810896583" MODIFIED="1596810995077">
<node TEXT="if node has a link to a existing file --&gt;" ID="ID_1042961255" CREATED="1596810925478" MODIFIED="1596811293793"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html>
</richcontent>
<node TEXT="save note to file" ID="ID_1305173532" CREATED="1596811025868" MODIFIED="1596811178835"/>
</node>
<node TEXT="else" ID="ID_1668461704" CREATED="1596811186371" MODIFIED="1596811235662"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (has no link)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if node has a defined extension" ID="ID_344662637" CREATED="1596811190467" MODIFIED="1596811304577"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html>
</richcontent>
<node TEXT="save note to temp file" ID="ID_151990483" CREATED="1596811244844" MODIFIED="1596811259844"/>
</node>
</node>
</node>
</node>
<node TEXT="more detailed:" FOLDED="true" ID="ID_346684695" CREATED="1596810888046" MODIFIED="1596834641498"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html>

</richcontent>
<node TEXT="if node has a note --&gt;" ID="ID_291066767" CREATED="1596810896583" MODIFIED="1596810995077">
<node TEXT="if node has a link to a existing file --&gt;" ID="ID_1546087462" CREATED="1596810925478" MODIFIED="1596811293793"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html>
</richcontent>
<node TEXT="save note to file" ID="ID_196908997" CREATED="1596811025868" MODIFIED="1596811178835"/>
</node>
<node TEXT="else" ID="ID_751523097" CREATED="1596811186371" MODIFIED="1596811235662"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (has no link)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if node has a defined extension" ID="ID_798310712" CREATED="1596811190467" MODIFIED="1596811304577"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if extension == &apos;groovy&apos; --&gt; it adds the execution mode line to the text to be saved" ID="ID_1435698012" CREATED="1596811433905" MODIFIED="1596811877096"/>
<node TEXT="defines temp file path and name for the current extension" ID="ID_1075915769" CREATED="1596811721403" MODIFIED="1596811844877">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_556920426" STARTINCLINATION="622;0;" ENDINCLINATION="622;0;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
</node>
<node TEXT="save note to temp file" ID="ID_157018368" CREATED="1596811244844" MODIFIED="1596811259844"/>
</node>
</node>
</node>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_521507055" CREATED="1595541664992" MODIFIED="1595541673292">
<node TEXT="look at the groovy file" ID="ID_1902534384" CREATED="1595541673301" MODIFIED="1595541688941"/>
<node TEXT="and at the lib NTF.groovy file" ID="ID_924577212" CREATED="1596811907797" MODIFIED="1596811929803"/>
</node>
</node>
<node TEXT="use cases" FOLDED="true" ID="ID_186256293" CREATED="1596812291151" MODIFIED="1596812295550">
<node TEXT="definitions" FOLDED="true" ID="ID_510390288" CREATED="1596815916312" MODIFIED="1596815920754">
<node TEXT="look in definition what I mean with &apos;text file&apos;" ID="ID_607601539" CREATED="1596815785404" MODIFIED="1596815826498">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_180563109" STARTINCLINATION="605;0;" ENDINCLINATION="605;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="look in definition what I mean with &apos;temp file&apos;" ID="ID_1912150925" CREATED="1596815785404" MODIFIED="1596815871517">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_929572360" STARTINCLINATION="598;0;" ENDINCLINATION="598;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="temporal text file" FOLDED="true" ID="ID_381202340" CREATED="1596812313618" MODIFIED="1596812329493">
<node TEXT="you can have some scripts, texts, codes, etc. in a map and export them to a temp file only when you need them" ID="ID_1304295930" CREATED="1596813591305" MODIFIED="1596816006845"/>
<node TEXT="tutorial" ID="ID_1995431867" CREATED="1596816013858" MODIFIED="1596816025619">
<node TEXT="here you have a node with text notes" ID="ID_1309264797" CREATED="1596816042167" MODIFIED="1596816087127"/>
<node TEXT="Lorem Ipsum" ID="ID_766691172" CREATED="1596816093924" MODIFIED="1596831122982"><richcontent TYPE="NOTE">

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
</html>

</richcontent>
<node TEXT="NoteToFile can&apos;t execute on it cause it doesn&apos;t know the file extension" ID="ID_1270220919" CREATED="1596831300787" MODIFIED="1596831345375"/>
</node>
<node TEXT="for the script to know what file to save, you have to define it in the node.&#xa;you can do that with any of this choices" ID="ID_52329417" CREATED="1596831156409" MODIFIED="1596831258933">
<node TEXT="end the text of the node with .extension" ID="ID_653793550" CREATED="1596831261571" MODIFIED="1596831290581">
<node TEXT="Lorem Ipsum.txt" ID="ID_655557435" CREATED="1596816093924" MODIFIED="1596831364641"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
</node>
</node>
<node TEXT="start de details of the node with.extension.Examples:" ID="ID_576991996" CREATED="1596831373236" MODIFIED="1596831402195">
<node TEXT="Lorem Ipsum" ID="ID_111303218" CREATED="1596816093924" MODIFIED="1596831422110"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Lorem Ipsum" ID="ID_1291674896" CREATED="1596816093924" MODIFIED="1596831437663"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt and more text
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Lorem Ipsum" ID="ID_922627449" CREATED="1596816093924" MODIFIED="1596831445015"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
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
</html>

</richcontent>
</node>
</node>
<node TEXT="define the estension in an atribute" ID="ID_1410545570" CREATED="1596831449317" MODIFIED="1596831507911">
<node TEXT="Lorem Ipsum" ID="ID_178547299" CREATED="1596816093924" MODIFIED="1596831586432"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
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
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="test:" ID="ID_1042393235" CREATED="1596831686466" MODIFIED="1596831690917">
<node TEXT="select this node and apply NoteToFile --&gt;" ID="ID_1269882343" CREATED="1596831708901" MODIFIED="1596831732289">
<node TEXT="Lorem Ipsum p01.txt" ID="ID_444509876" CREATED="1596816093924" MODIFIED="1596832019867"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo eget magna fermentum iaculis eu non diam phasellus. Quis viverra nibh cras pulvinar mattis. Interdum velit euismod in pellentesque. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Senectus et netus et malesuada fames. Est pellentesque elit ullamcorper dignissim. Ut faucibus pulvinar elementum integer. Etiam sit amet nisl purus in mollis. Diam sit amet nisl suscipit. Varius morbi enim nunc faucibus a pellentesque sit amet. Enim ut sem viverra aliquet eget sit. Sapien pellentesque habitant morbi tristique senectus. Dictum sit amet justo donec enim diam. Egestas erat imperdiet sed euismod nisi porta. Ac odio tempor orci dapibus ultrices in iaculis nunc. A iaculis at erat pellentesque adipiscing commodo. Sagittis id consectetur purus ut faucibus. Posuere urna nec tincidunt praesent semper feugiat.
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
      .txt
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="open the myTempFile.txt in notepad" ID="ID_1588258916" CREATED="1596831738141" MODIFIED="1596831763715"/>
<node TEXT="select any of this nodes and apply NoteToFile --&gt;" ID="ID_1120590874" CREATED="1596831708901" MODIFIED="1596831991725">
<node TEXT="Lorem Ipsum p02.txt" ID="ID_65368270" CREATED="1596816093924" MODIFIED="1596832052076"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Nunc sed augue lacus viverra. Libero volutpat sed cras ornare arcu dui vivamus arcu. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Tristique senectus et netus et malesuada fames ac turpis egestas. Dolor sit amet consectetur adipiscing elit ut. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Tincidunt praesent semper feugiat nibh sed. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Non consectetur a erat nam at lectus urna duis convallis. Arcu risus quis varius quam quisque id diam. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet risus feugiat in ante. Molestie at elementum eu facilisis sed. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Eu mi bibendum neque egestas congue quisque. Mattis enim ut tellus elementum sagittis vitae et. Magna ac placerat vestibulum lectus mauris. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Viverra tellus in hac habitasse platea dictumst.
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
      .txt
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Lorem Ipsum p03.txt" ID="ID_794965364" CREATED="1596816093924" MODIFIED="1596831929571"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Nulla pellentesque dignissim enim sit amet. Tincidunt vitae semper quis lectus nulla at. Duis convallis convallis tellus id. Ante in nibh mauris cursus. Et malesuada fames ac turpis egestas maecenas pharetra. Ut ornare lectus sit amet est. Phasellus vestibulum lorem sed risus ultricies tristique. Aenean vel elit scelerisque mauris. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in tellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Lorem Ipsum p04.txt" ID="ID_1359445758" CREATED="1596816093924" MODIFIED="1596831944023"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Gravida quis blandit turpis cursus in hac. Leo a diam sollicitudin tempor id. Mi bibendum neque egestas congue quisque. Mollis nunc sed id semper risus in. Dictum varius duis at consectetur lorem donec massa sapien. Vulputate dignissim suspendisse in est. In dictum non consectetur a. Pellentesque habitant morbi tristique senectus et netus. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Eu mi bibendum neque egestas. Elementum sagittis vitae et leo duis ut diam. Non arcu risus quis varius quam quisque id diam. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Convallis posuere morbi leo urna molestie. Fermentum odio eu feugiat pretium nibh. Commodo nulla facilisi nullam vehicula ipsum a arcu. Morbi enim nunc faucibus a pellentesque. Sit amet justo donec enim diam vulputate ut pharetra.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Lorem Ipsum p04.txt" ID="ID_407872123" CREATED="1596816093924" MODIFIED="1596831961469"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      At urna condimentum mattis pellentesque. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec feugiat in. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Convallis convallis tellus id interdum velit laoreet id. Ornare arcu odio ut sem nulla pharetra diam sit. Et tortor at risus viverra adipiscing at in tellus. Vel pharetra vel turpis nunc eget lorem. Magna ac placerat vestibulum lectus mauris. Bibendum enim facilisis gravida neque convallis a cras semper.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="open it again in notepad to see the changed file" ID="ID_510300870" CREATED="1596831993060" MODIFIED="1596832383952"/>
<node TEXT="If you do this test with Notepad++ it is updated automatically" ID="ID_1496215395" CREATED="1596832390025" MODIFIED="1596832427532"/>
</node>
</node>
</node>
<node TEXT="temporal Groovy scripts:" FOLDED="true" ID="ID_1808782116" CREATED="1595544734437" MODIFIED="1596812307353">
<node TEXT="you can have some scripts in a map and export them to a file only to run them when you need" ID="ID_1575463269" CREATED="1596813591305" MODIFIED="1596813668601"/>
<node TEXT="this way your script menú stays lean with the most usefull or recurrent scripts only" ID="ID_361292784" CREATED="1596813670550" MODIFIED="1596813749217"/>
<node TEXT="tutorial:" ID="ID_125456475" CREATED="1596813770645" MODIFIED="1596814211757">
<node TEXT="here you have a series of nodes with groovy scripts" ID="ID_928932008" CREATED="1596813805954" MODIFIED="1596813886550"/>
<node TEXT="they are very simple scripts that the only thing they do is to show a message" ID="ID_1913301574" CREATED="1596813887745" MODIFIED="1596813917976"/>
<node TEXT="as child nodes of each one are some explanations for it" ID="ID_1631178089" CREATED="1596813922866" MODIFIED="1596813974539"/>
<node TEXT="just do this:" ID="ID_149900656" CREATED="1596813975420" MODIFIED="1596814411526"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      for each one
    </p>
  </body>
</html>
</richcontent>
<node TEXT="select one of them" ID="ID_1023463621" CREATED="1596813989049" MODIFIED="1596814000419" NUMBERED="true"/>
<node TEXT="apply the NoteToFile command" ID="ID_1807052161" CREATED="1596814001334" MODIFIED="1596814018880" NUMBERED="true">
<node TEXT="from menú" ID="ID_1650080288" CREATED="1596814024589" MODIFIED="1596814033231"/>
<node TEXT="or with hotkeys if you defined some" ID="ID_1555055474" CREATED="1596814034370" MODIFIED="1596814063381"/>
<node TEXT="or by clicking this button (without selecting this node!)" ID="ID_151719852" CREATED="1596814068963" MODIFIED="1596814548045" ICON_SIZE="28.0 pt" LINK="menuitem:_NoteToFile_on_selected_node" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the groovy node must stay selected when clicking this button
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="accept overwriting its previous content" ID="ID_46548314" CREATED="1596814370528" MODIFIED="1596814434031" NUMBERED="true"/>
<node TEXT="execute it" ID="ID_1544069652" CREATED="1596814460678" MODIFIED="1596814508192" NUMBERED="true">
<node TEXT="from menú" ID="ID_1572490495" CREATED="1596814024589" MODIFIED="1596814033231">
<node TEXT="Scripts Edo / Note To File / My Temp File" ID="ID_951775650" CREATED="1596814634074" MODIFIED="1596814657158"/>
</node>
<node TEXT="or with hotkeys if you defined some" ID="ID_1139543280" CREATED="1596814034370" MODIFIED="1596814063381"/>
<node TEXT="or by clicking this button (without selecting this node!)" ID="ID_293388392" CREATED="1596814068963" MODIFIED="1596815722463" ICON_SIZE="28.0 pt" LINK="menuitem:_MyTempFile_on_single_node" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the groovy node must stay selected when clicking this button
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="example groovy nodes for testing" ID="ID_718429299" CREATED="1596814225906" MODIFIED="1596814247213">
<node TEXT="helloWorld" ID="ID_1227005180" CREATED="1596814250044" MODIFIED="1596814730145"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
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
      def texto = &quot;&nbsp;&nbsp;&nbsp;Hello World&nbsp;&nbsp;&nbsp;&nbsp;&quot;
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
<node TEXT="helloWorld 2.groovy" ID="ID_1024697830" CREATED="1596814250044" MODIFIED="1596815658452"><richcontent TYPE="NOTE">

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
      def texto = &quot;&nbsp;&nbsp;&nbsp;Hello World&nbsp;&nbsp;\n it added .groovy as node's details&quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="it adds the extension &quot;.groovy&quot; as node details" ID="ID_1277779376" CREATED="1596814838668" MODIFIED="1596814886359"/>
</node>
<node TEXT="helloWorld 3.groovy" ID="ID_1079317397" CREATED="1596814250044" MODIFIED="1596815589036"><richcontent TYPE="NOTE">

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
      def texto = &quot;&nbsp;&nbsp;&nbsp;Hello World&nbsp;&nbsp;3 \n this time it added an attribute to the node&nbsp;&quot;
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
</html>
</richcontent>
<node TEXT="details are being used for other information" ID="ID_1840210638" CREATED="1596815087274" MODIFIED="1596815613617"/>
<node TEXT="it adds the extension &quot;.groovy&quot; as node attribute" ID="ID_539591123" CREATED="1596814838668" MODIFIED="1596815119913"/>
</node>
<node TEXT="helloWorld" ID="ID_1961190755" CREATED="1596814250044" MODIFIED="1596815041467"><richcontent TYPE="NOTE">

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
      def texto = &quot;&nbsp;&nbsp;&nbsp;Hello World&nbsp;&nbsp;????&nbsp;&quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="doesn&apos;t do nothing cause it has no extension defined" ID="ID_1066563543" CREATED="1596814980461" MODIFIED="1596815007494"/>
</node>
</node>
</node>
</node>
<node TEXT="existing text file" FOLDED="true" ID="ID_388857484" CREATED="1596812336251" MODIFIED="1596832493992">
<node TEXT="you can update a text file in your drive with the text of the selected node note" ID="ID_41171510" CREATED="1596832458014" MODIFIED="1596832488684"/>
<node TEXT="tutorial" ID="ID_1266773584" CREATED="1596832500461" MODIFIED="1596832506451">
<node TEXT="create an empty textfile in your drive" ID="ID_115261911" CREATED="1596832510439" MODIFIED="1596832581778"/>
<node TEXT="create a node with a link to the file" ID="ID_616811302" CREATED="1596832538867" MODIFIED="1596832551848"/>
<node TEXT="add text in the note of that node" ID="ID_1430797758" CREATED="1596832584842" MODIFIED="1596832675743"/>
<node TEXT="apply NoteToFile on it" ID="ID_584970851" CREATED="1596832605193" MODIFIED="1596832686027"/>
<node TEXT="now open your text file in notepad or any text editor and you can see it has changed" ID="ID_1458096112" CREATED="1596832617550" MODIFIED="1596832646707"/>
</node>
</node>
</node>
</node>
<node TEXT="FileToNote.groovy" ID="ID_623846943" CREATED="1596481280418" MODIFIED="1596733485844">
<node TEXT="just like NoteToFile but the other way" ID="ID_889121028" CREATED="1596832725691" MODIFIED="1596832750589"/>
<node TEXT="description" FOLDED="true" ID="ID_866188859" CREATED="1596810795681" MODIFIED="1596810800604">
<node TEXT="imports a file as text into the selected node&apos;s note" ID="ID_1479278211" CREATED="1596810849029" MODIFIED="1596834338000"/>
<node TEXT="it doesn&apos;t open another application (or Notepad++)" ID="ID_20090125" CREATED="1596811985261" MODIFIED="1596812026394"/>
<node TEXT="general idea:" FOLDED="true" ID="ID_143391280" CREATED="1596810888046" MODIFIED="1596811341540"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if node has a link to an existing file" ID="ID_291424782" CREATED="1596834360369" MODIFIED="1596834383839">
<node TEXT="if extension from file is an &quot;accepted file extension&quot;" ID="ID_1355376679" CREATED="1596834399067" MODIFIED="1596834604473">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1565157321" STARTINCLINATION="759;0;" ENDINCLINATION="759;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html>
</richcontent>
<node TEXT="copies file text into note" ID="ID_1610787778" CREATED="1596834476073" MODIFIED="1596834498680"/>
</node>
</node>
<node TEXT="else" ID="ID_1097171146" CREATED="1596834384778" MODIFIED="1596834387468">
<node TEXT="if node has a defined extension" ID="ID_1291858666" CREATED="1596834514219" MODIFIED="1596834620666"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and user confirms
    </p>
  </body>
</html>
</richcontent>
<node TEXT="copies text from temp file with same extension into note" ID="ID_1305404405" CREATED="1596834545836" MODIFIED="1596834577433"/>
</node>
</node>
</node>
<node TEXT="more detailed" FOLDED="true" ID="ID_857289733" CREATED="1596834627992" MODIFIED="1596834644387"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html>

</richcontent>
<node TEXT="if node has a link to an existing file" ID="ID_413750479" CREATED="1596834360369" MODIFIED="1596834383839">
<node TEXT="if extension from file is an &quot;accepted file extension&quot;" ID="ID_422859122" CREATED="1596834399067" MODIFIED="1596834698311">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1565157321" STARTINCLINATION="759;0;" ENDINCLINATION="759;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="if note is empty or user confirms overwriting it" ID="ID_643618890" CREATED="1596834670156" MODIFIED="1596834691833">
<node TEXT="copies file text into note" ID="ID_1851137482" CREATED="1596834476073" MODIFIED="1596834498680"/>
<node TEXT="set extension in node" ID="ID_1434473938" CREATED="1596834806098" MODIFIED="1596834814569"/>
</node>
</node>
</node>
<node TEXT="else" ID="ID_59998678" CREATED="1596834384778" MODIFIED="1596834387468">
<node TEXT="if node has a defined extension" ID="ID_442521459" CREATED="1596834514219" MODIFIED="1596834717942">
<node TEXT="if note is empty or user confirms overwriting it" ID="ID_1352216" CREATED="1596834670156" MODIFIED="1596834691833">
<node TEXT="if it is a groovy file, it drops the first text line (executionmode)" ID="ID_519714599" CREATED="1596834760371" MODIFIED="1596834788592"/>
<node TEXT="copies text from temp file with same extension into note" ID="ID_853054553" CREATED="1596834545836" MODIFIED="1596834577433"/>
<node TEXT="set extension in node" ID="ID_1279218785" CREATED="1596834806098" MODIFIED="1596834814569"/>
</node>
</node>
</node>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_1199364540" CREATED="1595541664992" MODIFIED="1595541673292">
<node TEXT="look at the groovy file" ID="ID_654744777" CREATED="1595541673301" MODIFIED="1595541688941"/>
<node TEXT="and at the lib NTF.groovy file" ID="ID_1130969473" CREATED="1596811907797" MODIFIED="1596811929803"/>
</node>
</node>
</node>
<node TEXT="OpenWithNotepad++" ID="ID_819638833" CREATED="1596727985072" MODIFIED="1596733470022">
<node TEXT="description" FOLDED="true" ID="ID_496019362" CREATED="1595538933740" MODIFIED="1596733396991">
<node TEXT="Script to open files or node&apos;s notes as files in Notepad++" ID="ID_672112149" CREATED="1595538948717" MODIFIED="1595539006095"/>
<node TEXT="general idea:" ID="ID_1158237344" CREATED="1595540970979" MODIFIED="1596811337110"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      simplified for clarity
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if node" ID="ID_1353490900" CREATED="1595540698836" MODIFIED="1595540731402">
<node TEXT="has a link to a file" ID="ID_187460760" CREATED="1595540731408" MODIFIED="1595540742150">
<node TEXT="--&gt;" ID="ID_201884451" CREATED="1595540742160" MODIFIED="1595540745982">
<node TEXT="opens the file in N++" ID="ID_987102454" CREATED="1595540745988" MODIFIED="1595881452945"/>
</node>
</node>
<node TEXT="has a note" ID="ID_776425221" CREATED="1595540763684" MODIFIED="1595540774541">
<node TEXT="--&gt;" ID="ID_220116147" CREATED="1595540774548" MODIFIED="1595540789913">
<node TEXT="saves it as a textfile and opens it in N++" ID="ID_717675618" CREATED="1595540794586" MODIFIED="1595540819934"/>
</node>
</node>
<node TEXT="has no link nor note" ID="ID_1084538243" CREATED="1595540823126" MODIFIED="1595540850287">
<node TEXT="--&gt;" ID="ID_1598674139" CREATED="1595540852393" MODIFIED="1595540857640">
<node TEXT="takes text from last tempFile and brings it as a note" ID="ID_709575493" CREATED="1595540863690" MODIFIED="1595885348537"/>
</node>
</node>
</node>
</node>
<node TEXT="more detailed:" FOLDED="true" ID="ID_1000893871" CREATED="1595540970979" MODIFIED="1595541108514"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is really what it does
    </p>
  </body>
</html>
</richcontent>
<node TEXT="if node" ID="ID_756444367" CREATED="1595540698836" MODIFIED="1595540731402">
<node TEXT="has a link to a file" ID="ID_911475778" CREATED="1595540731408" MODIFIED="1595540742150">
<node TEXT="--&gt;" ID="ID_278781565" CREATED="1595540742160" MODIFIED="1595540745982">
<node TEXT="it opens the file in N++" ID="ID_316514421" CREATED="1595540745988" MODIFIED="1595885435008"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      only if extension is listed as accepted by the user in the script
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="has a note" ID="ID_1387994166" CREATED="1595540763684" MODIFIED="1595541737277"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      and has no link
    </p>
  </body>
</html>
</richcontent>
<node TEXT="--&gt;" ID="ID_931832867" CREATED="1595540774548" MODIFIED="1595540789913">
<node TEXT="saves it as a textfile and opens it in N++" ID="ID_1194509406" CREATED="1595540794586" MODIFIED="1595540819934">
<node TEXT="if it&apos;s a groovy script" ID="ID_1578354392" CREATED="1595541218993" MODIFIED="1595541274914">
<node TEXT="it saves it in the user&apos;s scripts folder" ID="ID_1687636439" CREATED="1595541274919" MODIFIED="1595541274921"/>
</node>
<node TEXT="if not" ID="ID_1748074945" CREATED="1595541291909" MODIFIED="1595541296054">
<node TEXT="it saves it in a default folder" ID="ID_624553843" CREATED="1595541297954" MODIFIED="1595885430577"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      defined by the user in the script
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="has no link nor note" ID="ID_706329662" CREATED="1595540823126" MODIFIED="1595540850287">
<node TEXT="--&gt;" ID="ID_1179727127" CREATED="1595540852393" MODIFIED="1595540857640">
<node TEXT="takes text from last tempFile and brings it as a note" ID="ID_872217065" CREATED="1595540863690" MODIFIED="1595885525328"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      chooses the tempFile with the desired extension
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="more more detailed" FOLDED="true" ID="ID_92849586" CREATED="1595541599546" MODIFIED="1595541620768">
<node TEXT="look at the script logic" ID="ID_490321295" CREATED="1595541622227" MODIFIED="1595541654703" LINK="#ID_555265321"/>
</node>
<node TEXT="more more more detailed" FOLDED="true" ID="ID_1038108371" CREATED="1595541664992" MODIFIED="1595541673292">
<node TEXT="look at the groovy file" ID="ID_411352942" CREATED="1595541673301" MODIFIED="1595541688941"/>
</node>
</node>
<node TEXT="script logic" FOLDED="true" ID="ID_555265321" CREATED="1595539015561" MODIFIED="1596733396992">
<node TEXT="- it works on the selected node(s)" ID="ID_1604346896" CREATED="1595539029727" MODIFIED="1595539923565"/>
<node TEXT="(1) - if node has" ID="ID_653154403" CREATED="1595539029727" MODIFIED="1595539192510">
<node TEXT="" ID="ID_1608332519" CREATED="1595539206644" MODIFIED="1595539206646">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="a link to a file" ID="ID_957059637" CREATED="1595539192515" MODIFIED="1595539254382"/>
<node TEXT="and" ID="ID_100934665" CREATED="1595539192514" MODIFIED="1595539265481"/>
<node TEXT="its extension is &apos;listed as accepted&apos; by the user" ID="ID_1624494507" CREATED="1595539265483" MODIFIED="1595539942226"><richcontent TYPE="NOTE">

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
      &nbsp;(it is only to avoid opening binary, jpg, pdf,excel, etc&nbsp;&nbsp;files in N++ accidentally)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="" ID="ID_690373046" CREATED="1595539206639" MODIFIED="1595539206644">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="--&gt; opens file in Notepad ++" ID="ID_747382340" CREATED="1595539192512" MODIFIED="1595539192513"/>
</node>
</node>
<node TEXT="else" ID="ID_1719755852" CREATED="1595539029730" MODIFIED="1595539029730">
<node TEXT="(2) - if the node has a note" ID="ID_1733739007" CREATED="1595539029730" MODIFIED="1595882002928">
<node TEXT="- looks in node if extension is defined" ID="ID_1381731412" CREATED="1595881644938" MODIFIED="1595881677174">
<node TEXT="looks if it has attribute with extension string" ID="ID_1529022625" CREATED="1595881706934" MODIFIED="1595881904518"/>
<node TEXT="looks if node details begins with &apos;.&apos;" ID="ID_1091670878" CREATED="1595881733661" MODIFIED="1595881753289">
<node TEXT="--&gt; first word  after the &apos;.&apos; must be the extension" ID="ID_354447493" CREATED="1595881756586" MODIFIED="1595881787237"/>
</node>
<node TEXT="looks if node text ends with an extension" ID="ID_348303558" CREATED="1595881789470" MODIFIED="1595881843350"/>
<node TEXT="if not then null" ID="ID_437484794" CREATED="1595881843997" MODIFIED="1595881853794"/>
</node>
<node TEXT="- if extension is null" ID="ID_237328090" CREATED="1595881869598" MODIFIED="1595882007583">
<node TEXT="- if the note begins with &quot;//.&quot;" ID="ID_1824371215" CREATED="1595539029734" MODIFIED="1595885634350"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this part is only for backwards compability with my own maps. not needed for new maps
    </p>
  </body>
</html>
</richcontent>
<node TEXT="--&gt;  the first word after that is the extension of the temp file to createChild" ID="ID_405744788" CREATED="1595539727561" MODIFIED="1595539727565"/>
<node TEXT="else extension =&apos;txt&apos;" ID="ID_158613085" CREATED="1595539029734" MODIFIED="1595539029734"/>
</node>
</node>
<node TEXT="- if the extension == &apos;groovy&apos;" ID="ID_1730431207" CREATED="1595539029734" MODIFIED="1595539774339">
<node TEXT="--&gt;" ID="ID_1844404510" CREATED="1595539774343" MODIFIED="1595539799843">
<node TEXT="- tempfile should be created in /userDirectory/scripts folder" ID="ID_860489083" CREATED="1595539799846" MODIFIED="1595540000042"/>
<node TEXT="- add a first line to the text indicating ExecutionMode" ID="ID_1549004961" CREATED="1595539029734" MODIFIED="1595540009289"/>
</node>
</node>
<node TEXT="- set the extension value in the node for future uses" ID="ID_1770553495" CREATED="1595881966179" MODIFIED="1595882001397"/>
<node TEXT="- take the note text and create (or overwrite) the tempfile appending the extension to the file&apos;s name" ID="ID_1695799053" CREATED="1595539029735" MODIFIED="1595539029735"/>
<node TEXT="- open it in Notepad ++" ID="ID_1531927186" CREATED="1595539029735" MODIFIED="1595539029735"/>
</node>
</node>
<node TEXT="else" ID="ID_1891080716" CREATED="1595539029735" MODIFIED="1595539029735">
<node TEXT="(3) case node has" ID="ID_1016994575" CREATED="1595539029735" MODIFIED="1595540134003">
<node TEXT="" ID="ID_1266013017" CREATED="1595540087954" MODIFIED="1595540087955">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT=" no link" ID="ID_880372124" CREATED="1595540078126" MODIFIED="1595540078128"/>
<node TEXT="and" ID="ID_179171637" CREATED="1595540078123" MODIFIED="1595540078125"/>
<node TEXT="no note" ID="ID_1013138817" CREATED="1595540078120" MODIFIED="1595540140836"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
</node>
<node TEXT="" ID="ID_1629094572" CREATED="1595540087952" MODIFIED="1595540087954">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="--&gt;" ID="ID_669535441" CREATED="1595540087956" MODIFIED="1595540094031">
<node TEXT="- looks in node if extension is defined" ID="ID_1260325182" CREATED="1595881644938" MODIFIED="1595881677174">
<node TEXT="looks if it has attribute with extension string" ID="ID_1218617706" CREATED="1595881706934" MODIFIED="1595881904518"/>
<node TEXT="looks if node details begins with &apos;.&apos;" ID="ID_916962624" CREATED="1595881733661" MODIFIED="1595881753289">
<node TEXT="--&gt; first word  after the &apos;.&apos; must be the extension" ID="ID_1622452233" CREATED="1595881756586" MODIFIED="1595881787237"/>
</node>
<node TEXT="looks if node text ends with an extension" ID="ID_111829438" CREATED="1595881789470" MODIFIED="1595881843350"/>
<node TEXT="if not then &apos;txt&apos;" ID="ID_1339599182" CREATED="1595881843997" MODIFIED="1595882071289"/>
</node>
<node TEXT="- if file doesn&apos;t exist, creates it and adds default text" ID="ID_1649820816" CREATED="1595882099523" MODIFIED="1595882158173"/>
<node TEXT="- add a child to the selected node" ID="ID_1972483938" CREATED="1595539029736" MODIFIED="1595882173180"/>
<node TEXT="- take the text of the last saved myTempFile.extension and put it in the new node&apos;s note&#xa;(if groovy: without the first line where the executionmode is indicated)" ID="ID_1167585906" CREATED="1595539029736" MODIFIED="1595885695490"/>
<node TEXT="- set the extension value in the node for future uses" ID="ID_1186379094" CREATED="1595881966179" MODIFIED="1595882001397"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="using it" FOLDED="true" ID="ID_1765245825" CREATED="1595883642018" MODIFIED="1596733396993">
<node TEXT="here are some examples. just apply the script on any of this sibling nodes (the green ones).&#xa;the explanation of what happens is in its child nodes" ID="ID_1492025726" CREATED="1595883663012" MODIFIED="1595885297901"/>
<node TEXT="Temp tables in .SQL" ID="ID_668699212" CREATED="1595546545551" MODIFIED="1595885127900" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="NOTE">

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
      -- finalmente elimina la tabla temporal&nbsp;
    </p>
    <p>
      DROP TABLE #MiTablaTemporal
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&lt;-- has a note and the node&apos;s text ends with &apos;.sql&apos;" ID="ID_31262320" CREATED="1595883916456" MODIFIED="1595883949085">
<node TEXT="--&gt; copies the note&apos;s text into a sql file and opens it in N++" ID="ID_1475378807" CREATED="1595883952125" MODIFIED="1595884251374"/>
<node TEXT="marks the node as a sql file for future uses" ID="ID_683909751" CREATED="1595884252342" MODIFIED="1595884275106"/>
</node>
</node>
<node TEXT="nodo.sql" ID="ID_524925149" CREATED="1595884301291" MODIFIED="1595885127903" BACKGROUND_COLOR="#ccff99">
<node TEXT="&lt;-- has no note and the node&apos;s text ends with &apos;.sql&apos;" ID="ID_1659438816" CREATED="1595883916456" MODIFIED="1595884325731">
<node TEXT="--&gt; copies the text from the .sql file into a new child node&apos;s note" ID="ID_146389934" CREATED="1595883952125" MODIFIED="1595884425439"/>
<node TEXT="marks the child node as a sql file for future uses" ID="ID_426074207" CREATED="1595884252342" MODIFIED="1595884444455"/>
</node>
</node>
<node TEXT="" ID="ID_150994753" CREATED="1595884528003" MODIFIED="1595884528005">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="nodo" ID="ID_517343389" CREATED="1595884463750" MODIFIED="1595885127904" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .sql
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="nodo" ID="ID_521208320" CREATED="1595884477533" MODIFIED="1595885127905" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .sql and other words
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="nodo" ID="ID_1989915580" CREATED="1595884477533" MODIFIED="1595885127906" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="DETAILS">

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
</html>
</richcontent>
</node>
<node TEXT="" ID="ID_137573382" CREATED="1595884528001" MODIFIED="1595884528003">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="&lt;-- has no note and the node&apos;s details starts with &apos;.sql&apos;" ID="ID_913507678" CREATED="1595883916456" MODIFIED="1595884559717">
<node TEXT="--&gt; copies the text from the .sql file into a new child node&apos;s note" ID="ID_209023236" CREATED="1595883952125" MODIFIED="1595884425439"/>
<node TEXT="marks the child node as a sql file for future uses" ID="ID_192652148" CREATED="1595884252342" MODIFIED="1595884444455"/>
</node>
</node>
<node TEXT="Temp tables in .SQL" ID="ID_1576419220" CREATED="1595546545551" MODIFIED="1595885127907" BACKGROUND_COLOR="#ccff99"><richcontent TYPE="NOTE">

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
      -- finalmente elimina la tabla temporal&nbsp;
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
</html>
</richcontent>
<node TEXT="&lt;-- has a note and the node&apos;s text ends with &apos;.sql&apos;" ID="ID_986530182" CREATED="1595883916456" MODIFIED="1595883949085">
<node TEXT="--&gt; copies the note&apos;s text into a sql file and opens it in N++" ID="ID_844893371" CREATED="1595883952125" MODIFIED="1595884251374"/>
<node TEXT="marks the node as a sql file for future uses" ID="ID_1064056355" CREATED="1595884252342" MODIFIED="1595884275106">
<node TEXT="can&apos;t use details" ID="ID_1164627462" CREATED="1595884744015" MODIFIED="1595884788245"/>
<node TEXT="adds an attribute" ID="ID_1069920123" CREATED="1595884788826" MODIFIED="1595884802025"/>
</node>
</node>
</node>
<node TEXT="node" FOLDED="true" ID="ID_877473369" CREATED="1595884840666" MODIFIED="1596736664990" BACKGROUND_COLOR="#ccff99">
<attribute NAME="file_ext" VALUE="sql"/>
<node TEXT="&lt;-- has no note and has attribute defining extension text" ID="ID_215716638" CREATED="1595883916456" MODIFIED="1595885036154">
<node TEXT="--&gt; copies the text from the .sql file into a new child node&apos;s note" ID="ID_1137873927" CREATED="1595883952125" MODIFIED="1595884425439"/>
<node TEXT="marks the child node as a sql file for future uses" ID="ID_929676264" CREATED="1595884252342" MODIFIED="1595884444455"/>
</node>
</node>
<node TEXT="nodo" ID="ID_1408834588" CREATED="1595883701323" MODIFIED="1595885127893" BACKGROUND_COLOR="#ccff99">
<node TEXT="&lt;--- this node has no link nor note nor file extension definition" ID="ID_1369361575" CREATED="1595883707202" MODIFIED="1595883843663">
<node TEXT="--&gt; thinks its a txt and copies the text from the file to the note" ID="ID_131575443" CREATED="1595883843668" MODIFIED="1595883843669"/>
</node>
</node>
</node>
<node TEXT="first time with a groovy script" FOLDED="true" ID="ID_1642018419" CREATED="1595542003322" MODIFIED="1596733396994">
<node TEXT="select this node --&gt;" ID="ID_1899471111" CREATED="1595542028993" MODIFIED="1595544369229" NUMBERED="true">
<font BOLD="true"/>
<node TEXT="Groovy Temp Script" ID="ID_1689576679" CREATED="1595542383852" MODIFIED="1595883323418"><richcontent TYPE="NOTE">

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
      nodoResult.noteText = 'the path to your user directory is :&nbsp;&nbsp;\n\n' + userDir
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
</html>
</richcontent>
</node>
</node>
<node TEXT="and execute the &quot;open with Notepad++&quot; script" ID="ID_1565046122" CREATED="1595542428149" MODIFIED="1595544438942" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      select it from the menu or ...
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Open with Notepad++ on selected node" ID="ID_1747272277" CREATED="1595542528786" MODIFIED="1595542766517" ICON_SIZE="40.0 pt" LINK="menuitem:_OpenWithNotepad++_on_selected_node"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click this button
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="it opens in Freeplane, but just close it this time" ID="ID_143875946" CREATED="1595545961773" MODIFIED="1595545983942" NUMBERED="true"/>
<node TEXT="close and reopen Freeplane" ID="ID_1553385728" CREATED="1595540646267" MODIFIED="1595540661642" NUMBERED="true"/>
<node TEXT="the second script appears in the menu" ID="ID_168268620" CREATED="1595541799349" MODIFIED="1595544522235"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is going to be the menu option you can use to execute your temp scripts from now on
    </p>
  </body>
</html>
</richcontent>
<node TEXT="/main_menu/ScriptsEdo/GroovyTempScript" ID="ID_412220651" CREATED="1595541922165" MODIFIED="1595541922165"/>
</node>
<node TEXT="Test" ID="ID_795393342" CREATED="1595885974061" MODIFIED="1595885979046" NUMBERED="true">
<node TEXT="execute this second script" ID="ID_1892086067" CREATED="1595544043360" MODIFIED="1595544535624"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      select it from the menu or ...
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Apply Groovy Temp script on selected node" ID="ID_1945824812" CREATED="1595542528786" MODIFIED="1595885926403" ICON_SIZE="40.0 pt" LINK="menuitem:_MyTempFile_on_single_node"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click this button
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="the script that was just a Note in a node has been executed!!" ID="ID_633471097" CREATED="1595546021286" MODIFIED="1595546063284"/>
</node>
</node>
<node TEXT="how I use it" FOLDED="true" ID="ID_1749816036" CREATED="1595540672716" MODIFIED="1596733396995">
<node TEXT="I use this scripts to have in one map my little scripts and sql test and to not have a lot of files in the disk where I forget them and have problems to find them again" ID="ID_1802883405" CREATED="1595544587046" MODIFIED="1595883460928"/>
<node TEXT="use case Groovy scripts:" FOLDED="true" ID="ID_1608862163" CREATED="1595544734437" MODIFIED="1595544752203">
<node TEXT="tutorial" ID="ID_153739707" CREATED="1595544786379" MODIFIED="1595545065241">
<node TEXT="let&apos;s imagine you wan´t to make a test" ID="ID_1518168576" CREATED="1595544814255" MODIFIED="1595545285547"/>
<node TEXT="1. select this node and apply the &quot;Open with Notepad ++&quot; script" ID="ID_1654560672" CREATED="1595544895438" MODIFIED="1595886091127"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="it inserted a child node with the actual text of the groovy file" ID="ID_732354952" CREATED="1595544968267" MODIFIED="1595545157418"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      because the node you selected had no Link and no Note
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="2. select it (if it isn&apos;t allready selected)" ID="ID_253755407" CREATED="1595545022842" MODIFIED="1595546096832"/>
<node TEXT="3. apply Open with Notepad ++ on it" ID="ID_1807396228" CREATED="1595545096061" MODIFIED="1595545109791"/>
<node TEXT="now it opens it in N++" ID="ID_1119645915" CREATED="1595545186035" MODIFIED="1595545841335"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      because the node had a Note
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="4. modify it to your needs (in N++)&#xa;and saved it" ID="ID_1149477409" CREATED="1595545203124" MODIFIED="1595545238944">
<node TEXT="if you don&apos;t know what to do now, here is an idea:" ID="ID_1429434286" CREATED="1595545312729" MODIFIED="1595545385514">
<node TEXT="delete the content after the line 3" ID="ID_110547482" CREATED="1595545385517" MODIFIED="1595545398531"/>
<node TEXT="copy the text from the note of this node in the file in Notepad++ at the end of it" ID="ID_1259420332" CREATED="1595545405044" MODIFIED="1595547431318"><richcontent TYPE="NOTE">

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
      &nbsp;&nbsp;&nbsp;&nbsp;a+b
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
<node TEXT="save it" ID="ID_600409995" CREATED="1595545606026" MODIFIED="1595545608957"/>
</node>
<node TEXT="5. execute the script if it works" ID="ID_308295420" CREATED="1595545630558" MODIFIED="1595545701538"/>
<node TEXT="6 import it as a note" ID="ID_1810267914" CREATED="1595545703662" MODIFIED="1595545728317">
<node TEXT="select this node --&gt;" ID="ID_1221568427" CREATED="1595545748872" MODIFIED="1595545759442">
<node TEXT="my test:" ID="ID_1877002037" CREATED="1595545765785" MODIFIED="1595545774649"/>
</node>
<node TEXT="apply Open with Notepad ++ on it" ID="ID_231084240" CREATED="1595545096061" MODIFIED="1595545807791"/>
</node>
<node TEXT="And that&apos;s how I manage my little scrpts collection" ID="ID_1214726140" CREATED="1595545859618" MODIFIED="1595545907806"/>
</node>
</node>
<node TEXT="I added keyboard&apos;s shortcuts to this two menus for me" FOLDED="true" ID="ID_845973626" CREATED="1595546163258" MODIFIED="1595886360894"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this way going to N++ back and forth is very agile
    </p>
  </body>
</html>
</richcontent>
<node TEXT="ctrl +shft + +" ID="ID_159350497" CREATED="1595546302958" MODIFIED="1595886326490"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;open with Notepad++&quot; script
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="ctrl + shft + m" ID="ID_1623627792" CREATED="1595546322198" MODIFIED="1595886288400"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;my Temp File&quot; script
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="use case SQL" FOLDED="true" ID="ID_660534745" CREATED="1595546409354" MODIFIED="1595546418329">
<node TEXT="my example" ID="ID_211248029" CREATED="1595546537777" MODIFIED="1595546542595">
<node TEXT="Temp tables in .SQL" ID="ID_709232908" CREATED="1595546545551" MODIFIED="1595883483340"><richcontent TYPE="NOTE">

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
      -- finalmente elimina la tabla temporal&nbsp;
    </p>
    <p>
      DROP TABLE #MiTablaTemporal
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="apply Open with Notepad ++ on it" ID="ID_936090371" CREATED="1595545096061" MODIFIED="1595546849867"/>
</node>
</node>
<node TEXT="use case file with links" FOLDED="true" ID="ID_1752583887" CREATED="1595547008550" MODIFIED="1595547021246">
<node TEXT="when you have a node with a link to a file like this one" ID="ID_941263064" CREATED="1595547267189" MODIFIED="1595886473381">
<node TEXT="myTempFile.txt" ID="ID_282911" CREATED="1595886465655" MODIFIED="1595886465655" LINK="file:/C:/Temp/myTempFile.txt"/>
</node>
<node TEXT="you can select it and open it with notepad++" ID="ID_1566922055" CREATED="1595547300533" MODIFIED="1595547333517"/>
<node TEXT="in this case it won&apos;t work cause this file is in my computer, not in yours, but you can test it with one of your own." ID="ID_1594428052" CREATED="1595547335854" MODIFIED="1595886534972"/>
</node>
</node>
<node TEXT="example video" FOLDED="true" ID="ID_505521985" CREATED="1595894035602" MODIFIED="1596733396995">
<node TEXT="youtube video with an sql example" ID="ID_757408180" CREATED="1595894046352" MODIFIED="1595894100274" LINK="https://youtu.be/GTYWBa4EUFk"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      has no Audio, but it helps to get an idea
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="LastLoggedError.groovy" ID="ID_1754657241" CREATED="1596552723379" MODIFIED="1596733485888">
<node TEXT="it shows the last lines from the log.0 file where Freeplane logs errors and other events" ID="ID_47952164" CREATED="1596835112782" MODIFIED="1596835154632"/>
</node>
<node TEXT="myTempFile.groovy" ID="ID_621153400" CREATED="1596734132578" MODIFIED="1596807817802"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
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
      nodoMD.noteText = &quot;&lt;html&gt;&lt;body&gt;&quot; +&nbsp;&nbsp;texto + &quot;&lt;/body&gt;&lt;/html&gt;&quot;
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
<node TEXT="initial My Temp File" ID="ID_297880224" CREATED="1596728636125" MODIFIED="1596734161754"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
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
      def texto = &quot;&nbsp;&nbsp;&nbsp;This is just the initial 'My Temp File' groovy script&nbsp;&nbsp;&nbsp;\n\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It does nothing more than showing this message&nbsp;&nbsp;&nbsp;&nbsp;&quot;
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage(texto)
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Example: MarkdownTo HTML" FOLDED="true" POSITION="right" ID="ID_1555513226" CREATED="1596728612206" MODIFIED="1596835582589">
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
</html>

</richcontent>
<node TEXT="description" ID="ID_22331393" CREATED="1596729639756" MODIFIED="1596731460619"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this example script takes a note that has been written using the Markdown convention and copies it in another note using html formating.
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
      open the note panel for this example
    </p>
  </body>
</html>
</richcontent>
<node TEXT="in menu View / Notes / Display note panel" ID="ID_1954660040" CREATED="1596731530773" MODIFIED="1596731595790"/>
<node TEXT=".. or clicking this button" ID="ID_1189271142" CREATED="1596731614277" MODIFIED="1596731650959" ICON_SIZE="24.0 pt" LINK="menuitem:_ShowHideNoteAction"/>
</node>
<node TEXT="Install the MDTool library in Freeplane" FOLDED="true" ID="ID_1191180546" CREATED="1596728756188" MODIFIED="1596729602697"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the example script needs this library
    </p>
  </body>
</html>
</richcontent>
<node TEXT="get MDTool library" ID="ID_383552204" CREATED="1596729142920" MODIFIED="1596729160181">
<node TEXT="MDTool project" ID="ID_761716332" CREATED="1596728800263" MODIFIED="1596728840727">
<node TEXT="cevin15/MDTool" ID="ID_20510864" CREATED="1596728721252" MODIFIED="1596728751070" LINK="https://github.com/cevin15/MDTool"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      github.com
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="download the last jar file from there:" ID="ID_1167522396" CREATED="1596728844539" MODIFIED="1596728864121">
<node ID="ID_1652264991" CREATED="1596728956533" MODIFIED="1596729093052" LINK="https://github.com/cevin15/MDTool/tree/master/download">
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
<node TEXT="this is the link to directly download the version I downloaded" ID="ID_557841393" CREATED="1596728972562" MODIFIED="1596729000877">
<node ID="ID_1647473269" CREATED="1596729021097" MODIFIED="1596729134124" LINK="https://github.com/cevin15/MDTool/raw/master/download/MDTool-1.2.4.jar"><richcontent TYPE="NODE">

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
<node TEXT="Install the MDTool library" ID="ID_1833820644" CREATED="1596729183515" MODIFIED="1596729195595">
<node TEXT="copy (or move) the jar file you just dowloaded into your lib folder in your freeplane user directory" ID="ID_1923764037" CREATED="1596729200141" MODIFIED="1596729288474">
<node TEXT="open your user directory" ID="ID_1172093880" CREATED="1595540288110" MODIFIED="1595540379802" LINK="menuitem:_OpenUserDirAction" NUMBERED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      click the icon of this node
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="in there you can see your &apos;lib&apos; folder" ID="ID_1243318831" CREATED="1595540390955" MODIFIED="1596729321523" NUMBERED="true"/>
<node TEXT="copy the file &apos;MDTool-xxx.jar&apos; in there" ID="ID_305369087" CREATED="1595540462824" MODIFIED="1596729391555" NUMBERED="true"><richcontent TYPE="DETAILS">

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
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="close and reopen Freeplane" ID="ID_788992247" CREATED="1596729399931" MODIFIED="1596729432322">
<node TEXT="this way it can &quot;see it&quot;" ID="ID_277980240" CREATED="1596729432332" MODIFIED="1596729455104"/>
</node>
</node>
<node TEXT="save the script as groovy temp file" ID="ID_1859994285" CREATED="1596729844889" MODIFIED="1596729890953">
<node TEXT="This node has the script as text in it&apos;s note --&gt;" ID="ID_1136733817" CREATED="1596729900833" MODIFIED="1596729936369">
<node TEXT="markdown2Html" ID="ID_73276339" CREATED="1596728636125" MODIFIED="1596728720454"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
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
      nodoMD.noteText = &quot;&lt;html&gt;&lt;body&gt;&quot; +&nbsp;&nbsp;texto + &quot;&lt;/body&gt;&lt;/html&gt;&quot;
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
<node TEXT="select it" ID="ID_627117934" CREATED="1596729942186" MODIFIED="1596729968944" LINK="#ID_73276339"/>
<node TEXT="apply the &quot;note to file&quot; script" ID="ID_1509943706" CREATED="1596729978950" MODIFIED="1596730016317">
<node TEXT="select it from the menú ..." ID="ID_593219457" CREATED="1596730018626" MODIFIED="1596730134484"/>
<node TEXT="... or click on the button in this node" ID="ID_121595183" CREATED="1596730046342" MODIFIED="1596730144613" ICON_SIZE="24.0 pt" LINK="menuitem:_NoteToFile_on_selected_node"/>
</node>
<node TEXT="it was saved as the menú option" ID="ID_771715806" CREATED="1596730250043" MODIFIED="1596730280166">
<node TEXT="Scripts_Edo" ID="ID_1879452131" CREATED="1596730280174" MODIFIED="1596730309434">
<node TEXT="Note To File" ID="ID_112590740" CREATED="1596730298567" MODIFIED="1596730333990">
<node TEXT="My Temp File" ID="ID_1443359748" CREATED="1596730352596" MODIFIED="1596730360096"/>
</node>
</node>
</node>
</node>
<node TEXT="test using the script:" FOLDED="true" ID="ID_1088829981" CREATED="1596730387759" MODIFIED="1596731685721">
<node TEXT="select this node --&gt;" ID="ID_1390721185" CREATED="1596730402249" MODIFIED="1596730483289" LINK="#ID_413230106"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      it has a Note in Markdown
    </p>
  </body>
</html>
</richcontent>
<node TEXT="README.md" ID="ID_413230106" CREATED="1596573908818" MODIFIED="1596731393069"><richcontent TYPE="NOTE">

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
      &nbsp;&nbsp;* has a link to a file --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* it opens the file in N++
    </p>
    <p>
      &nbsp;&nbsp;* has a note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* saves it as a textfile and opens it in N++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* if it's a groovy script
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* it saves it in the user's scripts folder
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* if not
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* it saves it in a default folder
    </p>
    <p>
      &nbsp;&nbsp;* has no link nor note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* takes text from last groovy script tempFile and brings it as a note
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
</html>
</richcontent>
</node>
</node>
<node TEXT="apply the script selecting it from the menú" ID="ID_257979881" CREATED="1596730494624" MODIFIED="1596730512317">
<node TEXT="... or click this button" ID="ID_1304989382" CREATED="1596730514081" MODIFIED="1596730604369" ICON_SIZE="24.0 pt" LINK="menuitem:_MyTempFile_on_single_node"/>
</node>
<node TEXT="expected example result --&gt;" FOLDED="true" ID="ID_1520542521" CREATED="1596730789445" MODIFIED="1596734266407"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      it adds a child node to the selected one and if you open it's note, it looks formated
    </p>
  </body>
</html>
</richcontent>
<node TEXT="README.md" ID="ID_767020107" CREATED="1596573908818" MODIFIED="1596731393069"><richcontent TYPE="NOTE">

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
      &nbsp;&nbsp;* has a link to a file --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* it opens the file in N++
    </p>
    <p>
      &nbsp;&nbsp;* has a note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* saves it as a textfile and opens it in N++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* if it's a groovy script
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* it saves it in the user's scripts folder
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* if not
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* it saves it in a default folder
    </p>
    <p>
      &nbsp;&nbsp;* has no link nor note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;* takes text from last groovy script tempFile and brings it as a note
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
</html>
</richcontent>
<node TEXT="formated" ID="ID_1821169408" CREATED="1596731407283" MODIFIED="1596731407299"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      markdownToHtml
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Conclusion:" FOLDED="true" ID="ID_615396889" CREATED="1596731770699" MODIFIED="1596731778651">
<node TEXT="you could take a script that was written in a node&apos;s note and run it as a tempfile." ID="ID_1033947210" CREATED="1596731778657" MODIFIED="1596731945110"/>
</node>
</node>
<node TEXT="README.md" FOLDED="true" POSITION="left" ID="ID_1232301190" CREATED="1596573908818" MODIFIED="1596835464228" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_note_to_file/README.md"><richcontent TYPE="NOTE">

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
      &nbsp;&nbsp;&nbsp;&nbsp;if node has a note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if node has a link to a existing file --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;save note to file
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;else
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if node has a defined extension
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;save note to temp file
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
      &nbsp;&nbsp;&nbsp;&nbsp;if node has a link to an existing file
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if extension from file is an &quot;accepted file&nbsp;&nbsp;&nbsp;extension&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--&gt; copies file text into note
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;else
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if node has a defined extension
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--&gt; copies text from temp file with same extension into note
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
      &nbsp;&nbsp;&nbsp;&nbsp;if node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;has a link to a file --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it opens the file in N++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;has a note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;saves it as a textfile and opens it in N++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if it's a groovy script
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it saves it in the user's scripts folder
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if not
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it saves it in a default folder
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;has no link nor note --&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;takes text from last groovy script tempFile and brings it as a note
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
<node TEXT="formated" ID="ID_654376663" CREATED="1596835464199" MODIFIED="1596835464213"><richcontent TYPE="NOTE">

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
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      markdownToHtml
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
