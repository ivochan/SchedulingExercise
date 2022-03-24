%% Calcolo del valore limite di Liu-Lailand
% Questa funzione calcola il valore limite di Liu e Layland e verifica
% l'ammissibilita' di una schedulazione per i processi dati, a partire dal
% fattore di utilizzazione del processore, verificando la condizione
% necessaria e la condizione sufficiente.
function [bound_LL] = LL_conditions_evaluation(n,U)

    %% Calcolo del valore limite di Liu and Layland

    bound_LL = n*((2^(1/n))-1);

    %% Test di ammissibilit� dello scheduling


    % verifica della condizione necessaria
    if U <= 1
        % vale la condizione necessaria per cui e' garantita l'ammissibilit� di
        % qualsiasi scheduling
        fprintf('\nLa condizione necessaria di Liu & Layland � soddisfatta per cui � garantita una schedulazione ammissibile per i processi dati.');
        % fattibilit� con EDF
        fprintf('\nAd esempio, esiste una schedulazione ammissibile con EDF.');
        
        % verifica della condizione sufficiente
        if U <= bound_LL
            % la condizione sufficiente e' soddisfatta e quella sufficiente
            % il fattore di utilizzo non supera il valore limite del 69,3%.
            fprintf('\nLa condizione sufficiente di Liu & Layland � soddisfatta.')
            % fattibilita' con Rate Monotonic
            fprintf('\nLa schedulazione dei processi dati � sicuramente fattibile con l''algoritmo Rate Monotonic.')
        % else
        else
            % la condizoine sufficiente non e' soddisfatta
            fprintf('\nLa condizione sufficiente di Liu & Layland non � soddisfatta.')
            % la fattibilita' con Rate Monotonic non garantita
            fprintf('\nNon si pu� determinare se la schedulazione sia fattibile con l''algoritmo Rate Monotonic.');
            % si deve procedere con l'analisi esatta di Joseph e Pandya
        end
    % la condizione necessaria non e' soddisfatta    
    else
        % schedulazione non ammissibile
        fprintf('\nL''insieme dei processi ricevuto non � schedulabile con nessun algoritmo perch� il test di ammissibilit� � fallito.')
    end
    % end function
end
