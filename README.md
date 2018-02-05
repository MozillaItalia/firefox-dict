

FIREFOX:DICT (dict.noads.it)
===================
**FIREFOX:DICT** è un dizionario personalizzato collaborativo che migliora il rapporto tra utente finale e controllo ortografico del browser di casa Mozilla. Il "*Dizionario italiano*" [disponibile su AMO](https://addons.mozilla.org/it/firefox/addon/dizionario-italiano/?src=userprofile) si basa sul [pacchetto nato per OpenOffice.org](https://extensions.openoffice.org/project/dict-it), evidentemente non troppo al passo con i tempi.

Il progetto (se così lo si può definire) nasce per Mozilla Firefox, **ma è compatibile anche con gli altri prodotti Mozilla** (e compatibili, come Pale Moon o Waterfox).

persdict.dat & Download
-----------------

Puoi scaricare il file `persict.dat` direttamente dai file disponibili in questo repository, **sostituendolo a quello già presente all'interno della cartella del tuo profilo** (digita `about:profiles` nella barra URL, premi invio, individua e apri la cartella relativa al profilo utilizzato, è la *Cartella radice*). Non c'è bisogno di riavvio, il file è immediatamente utilizzato per il controllo ortografico.

Puoi, in alternativa sui sistemi Windows, scaricare e utilizzare un VBScript che si occupa dell'operazione permettendoti di automatizzarla. Naviga nella cartella "*Downloader*" di questo repository, scarica il file `FirefoxDictDownloader.vbs`, aprilo con un editor di testo e modifica la riga che comincia con `HTTPDownload`:

    HTTPDownload "https://raw.githubusercontent.com/gioxx/firefox-dict/master/persdict.dat", "C:\Users\TUONOME\AppData\Roaming\Mozilla\Firefox\Profiles\TUACARTELLAPROFILO\persdict.dat"

**Non toccare la stringa fino alla prima virgola che incontrerai** (nella prima parte è infatti specificato l'indirizzo del file `persict.dat` più aggiornato su GitHub), modifica esclusivamente la seconda parte, inserendo all'interno degli apici la corretta posizione del tuo profilo (*Cartella radice*), recuperabile proprio dalla pagina `about:profiles` di cui ti parlavo poco fa:

![enter image description here](https://dict.noads.it/images/about_profiles.png)

Licenza d'uso, distribuzione e supporto
---------------------------------------

Dove non diversamente specificato, **FIREFOX:DICT viene rilasciato con licenza Creative Commons, versione 4.0 by-nc-sa generica**, descritta punto per punto a questo indirizzo: [creativecommons.org/licenses/by-nc-sa/4.0/deed.it](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.it) (oppure in inglese: [creativecommons.org/licenses/by-nc-sa/4.0/deed.en](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.en)).

Neanche a dirlo, il file `persdict.dat` personalizzato è volutamente pensato e mantenuto per contenere termini in lingua italiana (presenti a dizionario o per lo meno accettati nella lingua comune), non sono permessi termini in altre lingue (e verranno rifiutate eventuali richieste di pull/merge).

Grazie!
-------
Qualche ringraziamento:

 - alla [Community di Mozilla Italia](https://forum.mozillaitalia.org) per il costante sostegno e la collaborazione,
 - a [GitHub](https://github.com/) per tutto ciò che mette a disposizione,
 - a [stackedit.io/app](https://stackedit.io/app) per l'ottimo editor MD online,
 - alla mia pazienza e ai soldi che investo in queste idee e progetti che non vengono mantenuti (economicamente parlando) da nessun altro (speriamo duri ancora per molto).
