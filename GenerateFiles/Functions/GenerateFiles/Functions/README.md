GenerateFiles PowerShell Moodul
 
GenerateFiles PowerShelli moodul! See on lihtne tööriist, mis aitab sul kiiresti genereerida erinevaid faile koos juhuslike laiendite ja nimedega.

Mis on GenerateFiles?

GenerateFiles on PowerShelli skript, mille eesmärk on luua faile erinevate laiendite ja nimedega. Kasutades seda tööriista, saad lihtsalt ja kiiresti testfailid loodud, ilma et peaksid iga faili käsitsi looma.

Kuidas paigaldada?
Laadi alla või kopeeri GenerateFiles.psm1 faili oma arvutisse.

Ava PowerShell ja kasuta järgmisi käske, et laadida moodul:

Import-Module "C:\Path\To\GenerateFiles.psm1"

Veendu, et asendad tee õigeks vastavalt sellele, kus failid asuvad.

Funktsioonid
Start-FileGeneration

Käivitab failide genereerimise. Sa saad määrata, kui palju faile luuakse, ja need on automaatselt erinevate laienditega (nt .txt, .pdf, jne).

Parameetrid:
$fileCount: (Valikuline) Kui palju faile sa tahad luua. Vaikimisi on see 5.
Näide:
Start-FileGeneration -fileCount 10

See käsk loob 10 faili.

Get-Extensions

Tagastab nimekirja kõigist faililaienditest, mida saab kasutada failide loomisel.

Näide:
Get-Extensions

See käsk näitab kõiki toetatud laiendeid, nagu .txt, .pdf, .csv jne.

Get-BaseNames

Tagastab nimekirja võimalikest failinimedest, mida saab kasutada failide loomisel.

Näide:
Get-BaseNames

See käsk näitab kõiki nimevorminguid, mida failide jaoks saab kasutada.

Failide struktuur

Siin on, kuidas projekt on üles ehitatud:

GenerateFiles/
│
├── GenerateFiles.psm1       # PowerShelli mooduli kood
├── Functions/
│   ├── Get-Extensions.ps1   # Funktsioon laiendite jaoks
│   ├── Get-BaseNames.ps1    # Funktsioon baasnimede jaoks
│   └── Start-FileGeneration.ps1  # Failide genereerimise skript
└── README.md                # Selle fail


Autor:
Karl Indrek Palmeos IT25
