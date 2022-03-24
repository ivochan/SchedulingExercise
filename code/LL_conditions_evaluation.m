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
        fprintf('\nLa condizione necessaria di Liu & Layland è soddisfatta per cui è garantita una schedulazione ammissibile per i processi dati.');
        % fattibilità con EDF
        fprintf('\nAd esempio, esiste una schedulazione ammissibile con EDF.');
        
        % verifica della condizione sufficiente
        if U <= bound_LL
            % la condizione sufficiente e' soddisfatta e quella sufficiente
            % il fattore di utilizzo non supera il valore limite del 69,3%.
            fprintf('\nLa condizione sufficiente di Liu & Layland è soddisfatta.')
            % fattibilita' con Rate Monotonic
            fprintf('\nLa schedulazione dei processi dati è sicuramente fattibile con l''algoritmo Rate Monotonic.')
        % else
        else
            % la condizoine sufficiente non e' soddisfatta
            fprintf('\nLa condizione sufficiente di Liu & Layland non è soddisfatta.')
            % la fattibilita' con Rate Monotonic non garantita
            fprintf('\nNon si può determinare se la schedulazione sia fattibile con l''algoritmo Rate Monotonic.');
            % si deve procedere con l'analisi esatta di Joseph e Pandya
        end
    % la condizione necessaria non e' soddisfatta    
    else
        % schedulazione non ammissibile
        fprintf('\nL''insieme dei processi ricevuto non è schedulabile con nessun algoritmo perchè il test di ammissibilità è fallito.')
    end
    % end function
end
