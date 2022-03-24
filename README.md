##  Test di schedulabilità di un task set di processi

Il test di schedulabilità viene avviato dallo script Matlab *scheduling_test.m*, in cui sono stati inseriti i dati dei processi per cui si vuole verificare se esista un algoritmo in grado di fornire una loro schedulazione.



I processi da analizzare sono i seguenti:

P1 = [3,6,6];
P2 = [2,9,9];
P3 = [4,24,24];

A riprova di quanto ottenuto tramite lo script, è stata effettuata manualmente l'analisi esatta di Joseph & Pandya.

Inoltre, è stata caricata una presentazione che fornisce una panoramica sui principali algoritmi di scheduling Real-Time, i cui grafici sono contenuti nella cartella *graphs*.



Il contenuto della directory *code*, invece, è il seguente:

- il file *scheduling_tes*t che avvia l'analisi di schedulazione dei processi dati;
- lo script *process_data_extraction*, che riceve in ingresso la matrice contenente i dati dei processi e restituisce costi, periodi e deadline di questi ultimi;
- il file *processor_utilization_factor*, che calcola il fattore di utilizzo della CPU per i processi dati;
- lo script *LL_conditions_evaluation*, che permette di calcolare le condizioni (necessaria e sufficiente) di Liu & Layland;
- il file *response_time_exact_analisys*, che fornisce i tempi di risposta dei rispettivi processi, tramite lo svolgimento dell'analisi esatta di Joseph & Pandya;
- la funzione *process_priority_calculation*, che calcola la priorità di ogni processo in esame, determinando quale sia quello con priorità minore ed il processo con priorità maggiore;
-  la funzione *deadline_check*, che si occupa di verificare il soddisfacimento della relazione che implica che il tempo di risposta di un dato processo sia minore o uguale della sua deadline, alfine di garantirne la schedulazione;

