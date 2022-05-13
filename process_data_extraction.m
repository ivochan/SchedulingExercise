%% Estrazione dei dati dalla matrice dei processi
% Questa funzione riceve in input la matrice dei processi di cui si vuole
% verificare se esista una schedulazione ammissibile e restituisce il
% numero di tali processi ed i vettori di costi, periodi e deadline
% associati.
function [n,c,t,d] = process_data_extraction(M)

    % vettore contenente il numero di righe e colonne
        rc = size(M); 
        % numero dei processi (numero di righe della matrice
        n = rc(1);
        % si estrae dalla matrice il vettore dei costi (prima colonna della
        % matrice
        c = M(:,1);
        % si estrae il vettore dei periodi (seconda colonna della matrice)
        t = M(:,2);
        % si estrae il vettore delle deadline (terza colonna della matrice)
        d = M(:,3);
%end function
end

