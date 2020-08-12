// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/NoteToFile"})

//.groovy

import org.apache.commons.io.input.ReversedLinesFileReader;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;


def log0Path = c.userDirectory.path + '\\logs\\log.0'
def logFile = new File(log0Path)

def lastLines
if(logFile.exists()){ lastLines = readLastLines(logFile, 6, 500,'\tat ') }

def nodo = node.createChild('last lines from log.0 file')
nodo.noteText = lastLines.reverse().join('\n\n')
def matcher = (nodo.note.plain =~  /\d?\d:\d\d:\d\d.{3}/)
def logDate = matcher[-1]?:'no match'

nodo.details = new SimpleDateFormat("dd-MM-yyyy").format(new Date()) + '  ' + logDate
c.select(nodo)

//---------------------------functions----------------------

def readLastLines(file, minLinesToRead, maxLinesToRead, stopIfContains){
         def result = []
         def reader = new ReversedLinesFileReader(file, StandardCharsets.UTF_8)
         def line = ''
         while((line = reader.readLine()) != null && (result.size()< minLinesToRead || !line.contains(stopIfContains)) && result.size()< maxLinesToRead){
                  result.add(line)
         }
         return result
}
