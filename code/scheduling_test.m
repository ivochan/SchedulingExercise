%% Analisi di schedulazione dei processi

%% Pulizia della console

clc 
clear

%% Dati dei processi

% Analisi per tre processi in input

% Un generico processo e' descritto come Pi = (C,T,D), con T=D

P1 = [2,6,6];
P2 = [1,4,4];
P3 = [3,18,18];

% Matrice dei parametri dei processi

M = [P1;P2;P3];

%% Estrazione dei dati dei processi

[n,c,t,d] = process_data_extraction(M);

%% Calcolo del fattore di Utilizzazione della CPU

[U] = processor_utilization_factor(n,c,t);
%output
fprintf('\nIl fattore di utilizzo della CPU per i processi dati è pari a %d \n\n',U);
  
%% Calcolo del valore di Liu e Layland

[boundLL] =  LL_conditions_evaluation(n,U);
%output
fprintf('\nIl valore di Liu e Layland è pari a %d \n\n',boundLL);

%% Analisi esatta di Joseph e Pandya del tempo di risposta

% si invoca la funzione apposita
response_time_exact_analisys(n,c,t,d);
