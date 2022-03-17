%% Calcolo del valore limite di Liu-Lailand
% Questa funzione calcola il valore limite di Liu e Layland e verifica
% l'ammissibilita' di una schedulazione per i processi dati, a partire dal
% fattore di utilizzazione del processore, verificando la condizione
% necessaria e la condizione sufficiente.
function [bound_LL] = LL_conditions_evaluation(n,U)

    %% Calcolo del valore limite di Liu and Layland

    bound_LL = n*((2^(1/n))-1);

    %% Test di ammissibilità dello scheduling

    % verifica della condizione necessaria
    if U <= 1
        % vale la condizione necessaria per cui e' garantita l'ammissibilità di
        % qualsiasi scheduling
        disp('La condizione necessaria di Liu-Layland è soddisfatta per cui è garantita una schedulazione ammissibile per i processi dati.');
        % fattibilità con EDF
        disp('Ad esempio, esiste una schedulazione ammissibile con EDF.');
        % fattibilita' con Rate Monotonic non garantita (si procede con analisi
        % esatta)
        disp('Tuttavia, non si può determinare se la schedulazione sia fattibile con l''algoritmo Rate Monotonic.');
        % si deve procedere con l'analisi esatta di Joseph e Pandya
    
        
    % verifica della condizione sufficiente
    elseif U <= bound_LL
        % la condizione sufficiente e' soddisfatta, cosi' come quella
        % necessaria, poiche' il fattore di utilizzo non supera il vlaore
        % limite del 69,3%.
        disp('La condizione sufficiente di Liu-Layland è soddisfatta.')
        % fattibilita' con Rate Monotonic
        disp('La schedulazione dei processi dati è sicuramente fattibile con l''algoritmo Rate Monotonic.')
        % le condizioni necessaria e sufficiente non sono soddisfatte
    else
        % schedulazione non ammissibile
        disp('L''insieme dei processi ricevuto non è schedulabile con nessun algoritmo perchè il test di ammissibilità è fallito.')
    end
    % end function
end
