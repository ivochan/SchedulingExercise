%% Verifica della relazione R <= D
%
function [flag]= deadline_check(Ri,Di)

	if Ri <= Di
        % allora l'algoritmo continua perche' viene
        % rispettata la relazione Ri <= Di
        fprintf('Inoltre rispetta la relazione R <= D.\n');
        % si aggiorna il flag
        flag = 1;
    else
        % il valore di Ri e' maggiore della deadline
        fprintf('Per questo task non e'' stata rispettata la relazione R <= D.\n');
        % l'algoritmo termina ed il task set risulta non
        % schedulabile
        fprintf('\nIl task set non è schedulabile con Rate Monotonic.\n');
        % si interrompe la procedura
        fprintf('L''analisi esatta di Joseph e Pandya viene interrotta.\n');
        % si aggiorna il flag
        flag = 0;
        
    % end function
end