'	FIREFOX:DICT Downloader 0.1
'	GSolone (dict.noads.it) - Ultima modifica: 5/2/18
'	Script originale di Rob van der Woude (http://www.robvanderwoude.com), basato su codice disponibile su Thai Visa forum (http://www.thaivisa.com/forum/index.php?showtopic=21832)
'	fonte: https://stackoverflow.com/questions/2973136/download-a-file-with-vbs
' 	---------------------------------------------------------------------------------------------------------------------------------------
'	Lo script scarica la lista filtri più aggiornata disponibile su GitHub e la modifica per renderla integrabile all'interno di una lista filtri standard per Adblock Plus e compatibili, a prescindere dal browser utilizzato.
'	---------------------------------------------------------------------------------------------------------------------------------------
' 	STORICO MODIFICHE
'		0.1- prima versione dello script.
'	---------------------------------------------------------------------------------------------------------------------------------------

' MODIFICA ESCLUSIVAMENTE LA CARTELLA DEL PROFILO (lascia invariato l'indirizzo di GitHub)
HTTPDownload "https://raw.githubusercontent.com/gioxx/firefox-dict/master/persdict.dat", "C:\Users\TUONOME\AppData\Roaming\Mozilla\Firefox\Profiles\TUACARTELLAPROFILO\persdict.dat"

' Non toccare nulla oltre questa riga!
' DO NOT touch anything below this line!
Sub HTTPDownload( myURL, myPath )
	' myURL must always end with a file name
	' myPath may be a directory or a file name; in either case the directory must exist
	
	' Standard housekeeping
    Dim i, objFile, objFSO, objHTTP, strFile, strMsg
    Const ForReading = 1, ForWriting = 2, ForAppending = 8

    ' Create a File System Object
    Set objFSO = CreateObject( "Scripting.FileSystemObject" )

    ' Check if the specified target file or folder exists,
    ' and build the fully qualified path of the target file
    If objFSO.FolderExists( myPath ) Then
        strFile = objFSO.BuildPath( myPath, Mid( myURL, InStrRev( myURL, "/" ) + 1 ) )
    ElseIf objFSO.FolderExists( Left( myPath, InStrRev( myPath, "\" ) - 1 ) ) Then
        strFile = myPath
    Else
        MsgBox "Non ho trovato la cartella del profilo. Correggi il percorso nello script e rilancialo!",16,"FIREFOX:DICT Downloader"
        Exit Sub
    End If

    ' Create or open the target file
    Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True )
    ' Create an HTTP object
    Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" )
	' Connection through proxy (remove comment in the line below)
	'objHTTP.setProxy 2, "proxy.contoso.com:8080", ""
	' Download the specified URL
    objHTTP.Open "GET", myURL, False
    objHTTP.Send
    ' Write the downloaded byte stream to the target file
    For i = 1 To LenB( objHTTP.ResponseBody )
        objFile.Write Chr( AscB( MidB( objHTTP.ResponseBody, i, 1 ) ) )
    Next
    ' Close the target file
    objFile.Close( )
	MsgBox "Copia terminata con successo.",64,"FIREFOX:DICT Downloader"
End Sub