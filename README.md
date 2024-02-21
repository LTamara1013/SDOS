# Dodavanje muzičkih efekata u audio signal korištenjem razvojnog okruženja ADSP-21489  (_Sistemi za digitalnu obradu signala_)

U okviru projektnog zadatka implementirani su audio efekti(echo,flanger,tremolo,wahwah) nad audio signalom koji je generisan u Pythonu. 

## Korišteni hardverski i softverski resursi

### Hardverski resursi
- **ADSP-21489** razvojna platforma
- PC (_x86-64, Windows 11 OS_)

### Softverski resursi
- _CrossCore Embedded Studio_ (za izvršavanje na ADSP-21489)
- _Visual Studio Code_ (za izvršavanje na PC-u)

## Priloženi fajlovi

U folderu **_Python_** sadržan je sav kod koji je implementiran u Pythonu. Unutar ovog foldera nalaze se i svi izlazni audio signali nad kojima su primijenjeni implementirani efekti, kao i header fajl u koji su smješteni odmjerci audio signala koji je generisan u Pythonu. Tu se smješteni i binarni fajlovi u koje su upisani odmjerci audio signala nad kojima su primijenjeni efekti implementirani u C programskom jeziku. 

U folderu **_CCES_** sadržan je projekat kreiran u _CCES_ . Sadrži folder **_AudioProcessing_** u kom se nalaze implementirani efekti napisani u C programskom jeziku. **_AudioProcessing.c_** sadrži implementiranu **_main_** funkciju u kojoj se pozivaju sve funckije korištene za obradu audio signala.

## Pokretanje i izvršavanje

Pokretanje se sprovodi sljedećim nizom koraka:

- Pokretanje **Efekti.ipynb_** iz _Visual Studio Code_-a za dobijanje rezultata obrade audio signala implementirane korištenjem Python programskog jezika.

- _Build_-anje projekta **_AudioProcessing_**  u _CCES_ i spuštanje na ciljnu ADSP-21489 razvojnu platformu (otvaranjem _Debug_ perspektive).



## Izvještaj 

U _pdf_ dokumentu **_Izvještaj_** dat je izvještaj sa detaljnijim opisom funkcionalnosti realizovanih pri izradi projektnog zadatka.
 