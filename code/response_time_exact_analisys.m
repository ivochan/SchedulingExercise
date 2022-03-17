%% Analisi esatta del tempo di risposta di un processo di Joseph e Pandya
%
function [] = response_time_exact_analisys(n,c,t,d)

    %% Calcolo della priorita' dei processi

    [alpha,min_p_index] = process_priority_calculation(t);
    
    % vettore delle priorita'
    fprintf('Il vettore delle priorità è alpha è : [');
    fprintf('%g, ', alpha(1:end-1));
    fprintf('%g]\n', alpha(end));
    
    % processo con priorita' minore
    fprintf('\nIl processo a priorità minore è P%d.\n\n',min_p_index)
    
    %% Inizializzazioni
    
    % tempo di risposta precedente
    pre_Ri = 0;
    % tempo di risposta corrente
    Ri = 0;
    
    %flag del ciclo
    done = (pre_Ri == Ri);
    
    % sommatoria
    summation = 0;
    % si calcola per ogni processo
    for i = 1:n
        % si devono calcolare i fattori dell'equazione di ricorrenza di
        % ogni processo diverso da i
        fprintf('\nEquazione di ricorrenza del processo P%d...\n',i);
        
        % calcolo di tutte le equazioni di ricorrenza
        while done 
                        
            % calcolo dell'equazione di ricorrenza del processo Pi
            for j = 1:n         
                % si esclude il processo corrente dal calcolo
                if j ~= i
                    % fattore pre_Ri/Tj
                    factor = pre_Ri/t(j);
                    % funzione di ceiling del fattore precedente
                    ceiling_factor = ceil(factor);
                    % sommatoria
                    summation = summation + ceiling_factor*c(j);
                end
          
                % si aggiunge alla sommatoria il costo di Pi       
                % calcolo del tempo di risposta corrente aggiungendo alla
                % sommatoria il costo di Pi
                Ri = c(i) + summation;
                % output
                % fprintf('Il tempo di risposta R%d è pari a %d\n',i,Ri);
                % se uguale al precedente l'algoritmo termina
                if Ri == pre_Ri
                    % l'algoritmo si interrompe
                    fprintf('\nIl valore di R%d è pari a %d ed uguale a quello assunto nell''iterazione precedente.\n',i,Ri);
            
                    % aggiornamento del flag
                    done = 0;
            
                    % si verifica se minore della deadline
                    flag = deadline_check(Ri,d(i));
                    % si verifica se la relazione Ri <= Di e' soddisfatta
                    if ~flag 
                        % se non e' soddisfatta si interrompe la procedura
                        return;
                    end
    	
                % il valore Ri e' diverso dal precedente    
                else
                    % si aggiorna
                    pre_Ri = Ri;      
                    % 
                    %fprintf('Il tempo di risposta del processo P%d all''iterazione %d è %d.\n',i,j,Ri) 
                    % fine if-else termine di interruzione del calcolo dell'eq
                end
    
            % end for    
            end
            
        % end while
        end
        
        % si resetta il flag del ciclo per calcolare l'eq del processo
        % successivo
        done = 1;
        
        % si resetta il tempo di risposta precedente per il processo
        % successivo
        pre_Ri=0;
        
    %end for
    end
    % se la procedura non e' stata interrotta allora il task set e'
    % schedulabile
     fprintf('\nIl task set è schedulabile con Rate Monotonic.\n');
% end function
end

    
