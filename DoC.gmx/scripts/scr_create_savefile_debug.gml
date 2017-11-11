/*
scr_create_savefile_debug(
);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("debug", "create_file", ini_read_real("debug", "create_file", 0)+1);

ini_close();

var file_path = working_directory + "SaveData\" + "OPEN_ME_PLEASE.txt";

if(!file_exists(file_path)) {
var text_string = 
"
/*******************************************************************************

Hallo und herzlich Willkommen im Speicherverzeichnis des beruehmten und
preisverdaechtigen 2D - Spiels 'Dungeons of Caelestia'!

Wir freuen uns, dass Sie sich in dieses Verzeichnis verirrt haben!

Wenn Sie beabsichtigen, die in diesem Verzeichnis ebenfalls enthaltene
Speicherdatei 'savedata.ini' zu editieren, muss ich Sie leider enttaeuschen.
Diese Datei ist in einem speziellen Format verfasst, das nur vom Spiel selbst
gelesen und interpretiert werden kann. Dabei kann jede manuelle Veraenderung
katastrophale Folgen haben, darunter zum Beispiel unbeabsichtigte Fehlfunktionen,
Spielabstuerze oder die Korruption aller Spieldateien, sodass eine Neuinstallation
durchgefuehrt werden muss.

Wenn Sie immer noch den Drang verspueren, Dateien zu editieren, in denen Sie nichts
zu suchen haben, empfehlen wir Ihnen, mit den Dateien im Verzeichnis
C:\Windows\System32 anzufangen, die machen naemlich sehr viel mehr Spass.

Vielen Dank fuer Ihre Aufmerksamkeit!

Ihr Dungeons-of-Caelestia Entwicklungsteam

********************************************************************************/
";

text_file = file_text_open_write(file_path);
file_text_write_string(text_file, string(text_string));
file_text_close(text_file);
}
