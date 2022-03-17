%% Calcolo delle priorita' dei processi
% Questa funzione calcola la priorita' associata ad ogni processo, sulla
% base del valore del periodo. In ingresso riceve, allora, il vettore dei
% periodi dei processi da analizzare ed in uscita restituisce il vettore
% delle rispettive priorità alpha ed il processo pi con la priorita' minore
function [alpha,min_p_index] = process_priority_calculation(t)

    % si calcola la dimensione del vettore dei periodi
    rc = size(t);
    % si estre il numero dei processi (il numero di righe)
    n = rc(1);

    %inizializzazione del vettore delle priorita'
    alpha = zeros(1,n);

    %% calcolo delle priorita'
    for i = 1:n
        % la priorita' e' l'inverso del periodo
        p = (1/t(i));
        % si inserisce in coda nel vettore delle priorita'
        alpha(i) = p; 
    end
    %% calcolo del processo con priotià minore, di cui si restituisce l'indice
    [pi, min_p_index] = min(alpha);
% end function
end
    