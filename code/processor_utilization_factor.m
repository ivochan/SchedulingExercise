%% Calcolo del fattore di utilizzo della CPU per i processi periodici dati

% Questa funzione riceve in i parametri dei processi per cui si vuole
% determinare il fattore di utilizzo della CPU, restituito come output.
function [U] = processor_utilization_factor(n,c,t)

    %% Inizializzazioni
    
    % fattore utilizzo CPU
    U = 0;     
   
    %% Verifica dei parametri
    
    % si verifica se il vettore dei costi e' nullo
    TF_c = isempty(c);
    
    % si verifica se il vettore dei periodi e' nullo
    TF_t = isempty(t);
    
    % se uno dei due e' nullo termina qui l'analisi
    if TF_c == 1 || TF_t == 1
        % la matrice ricevuta come parametro e' nulla
        disp('La matrice ricevuta come parametro non contiene elementi.');
    else
        % si procede con l'analisi perche' la matrice non e' nulla
        disp('Si procede con il test di schedulabilità dei processi dati ...');
    
        %% Calcolo del fattore di Utilizzo della CPU
        for i = 1:n 
            % sommatoria
            U = U+(c(i)/t(i));
        end
    end
    %end function
end