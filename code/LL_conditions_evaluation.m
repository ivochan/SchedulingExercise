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
        disp('La condizione necessaria di Liu-Layland � soddisfatta per cui � garantita una schedulazione ammissibile per i processi dati.');
        % fattibilit� con EDF
        disp('Ad esempio, esiste una schedulazione ammissibile con EDF.');
        % fattibilita' con Rate Monotonic non garantita (si procede con analisi
        % esatta)
        disp('Tuttavia, non si pu� determinare se la schedulazione sia fattibile con l''algoritmo Rate Monotonic.');
        % si deve procedere con l'analisi esatta di Joseph e Pandya
    
        
    % verifica della condizione sufficiente
    elseif U <= bound_LL
        % la condizione sufficiente e' soddisfatta, cosi' come quella
        % necessaria, poiche' il fattore di utilizzo non supera il vlaore
        % limite del 69,3%.
        disp('La condizione sufficiente di Liu-Layland � soddisfatta.')
        % fattibilita' con Rate Monotonic
        disp('La schedulazione dei processi dati � sicuramente fattibile con l''algoritmo Rate Monotonic.')
        % le condizioni necessaria e sufficiente non sono soddisfatte
    else
        % schedulazione non ammissibile
        disp('L''insieme dei processi ricevuto non � schedulabile con nessun algoritmo perch� il test di ammissibilit� � fallito.')
    end
    % end function
end
