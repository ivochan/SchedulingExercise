%% Analisi di schedulazione dei processi

%% Pulizia della console

clc 
clear

%% Il task set soddisfa sia la condizione necessaria che quella sufficiente
% P1 = [2,6,6];
% P2 = [1,4,4];
% P3 = [3,18,18];
%% Non esiste una schedulazione ammissibile con RM per questo task set
% P1 = [2,6,6];
% P2 = [3,4,4];
% P3 = [8,24,24];

%% Dati dei processi

% Analisi per tre processi in input

% Un generico processo e' descritto come Pi = (C,T,D), con T=D
P1 = [2,9,9];
P2 = [3,6,6];
P3 = [4,24,24];

% Matrice dei parametri dei processi

M = [P1;P2;P3];

%% Estrazione dei dati dei processi

[n,c,t,d] = process_data_extraction(M);

%% Calcolo del fattore di Utilizzazione della CPU

[U] = processor_utilization_factor(n,c,t);
% output
fprintf('\nIl fattore di utilizzo della CPU per i processi dati � pari a %d \n',U);
  
%% Calcolo del valore di Liu e Layland

[bound_LL] =  LL_conditions_evaluation(n,U);
% output
fprintf('\n\nIl valore di Liu e Layland � pari a %d \n\n',bound_LL);

%% Analisi esatta di Joseph e Pandya del tempo di risposta

% si effettua l'analisi esatta del tempo di risposta
if U > bound_LL
    % output
    fprintf('Si procede con l''analisi esatta dei tempi di risposta di Joseph & Pandya...\n\n');
    % si invoca la funzione apposita
    response_time_exact_analisys(n,c,t,d);
end
