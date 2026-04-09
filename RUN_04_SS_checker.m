% Steady state checker to ensure the simulation has settled
function [SS_checker, protein_ss] = RUN_04_SS_checker(idx,protein_ss, protein, SS_checker, tolerance, SS_max)

    % Checks steady state
        if SS_checker(idx)<SS_max
            if mean(abs(protein - protein_ss)) < tolerance
                SS_checker(idx)=SS_checker(idx)+1;
            else
                % Reset if it fluctuates
                SS_checker(idx)=0;
            end
        end

    % Update the memory and send it back to the main script
    protein_ss = protein;
end