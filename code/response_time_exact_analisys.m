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
    
    %% inizializzazioni
    % sommatoria
    sum = 0;
 
    %% Calcolo delle equazioni di ricorrenza di tutti i processi
    for i = 1:n
        % output
        fprintf('Eq. Ricorrenza del processo P%d...\n',i)
        
        % valore precedente del tempo di risposta
        pre_Wi = 0;
        
        % reset del flag per il ciclo di calcolo
        done = 0;
        
        % ciclo di calcolo della equazione di ricorrenza i-esima
        while (~done)
            % ciclo for
            for j = 1:n
                % si esclude il processo corrente dal calcolo
                if j ~= i
                    % fattore pre_Ri/Tj
                    factor = pre_Wi/t(j);
                    % funzione di ceiling del fattore precedente
                    ceiling_factor = ceil(factor);
                    % prodotto
                    mul = ceiling_factor*c(j);
                    % sommatoria
                    sum = sum + mul;               
                else
                    % per il processo i-esimo si conta solo il costo di
                    % esecuzione
                    Wi = c(j);
                end
            % end for                  
            end 
            %si aggiunge il costo
            Wi = Wi + sum; 
            % si resetta la sommatoria
            sum = 0;
            % output
            % fprintf('W%d = %d \n',i,Wi);
            
            % controllo di Ri
            if Wi == pre_Wi
                % l'algoritmo si ferma
                done = 1;
                % si assegna il valore del tempo di risposta
                Ri = Wi;
                % output
                fprintf('R%d = %d.\n',i,Ri);
                % verifca della deadline
                [flag] = deadline_check(Ri,d(i));
                % se la deadline non viene rispettata
                if ~flag
                    % si interrompe l'analisi
                    return;
                end
            % se valori diversi   
            else
            	% sia ggiorna il valore del tempo di risposta precedente
                pre_Wi = Wi;
            end
        % end while 
        end
    % end for           
    end
    
    % se la procedura non e' stata interrotta allora il task set e'
    % schedulabile
    fprintf('\nIl task set è schedulabile con Rate Monotonic.\n');

end
   