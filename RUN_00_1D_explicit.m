%% Reaction diffusion program 
%  1D

%% Setting parameters and initial conditions.

% run settup file
RUN_01_NS

% store initial concentrations
RUN_02_write_to_files

% End setting parameters and initial conditions.
%% Solving the equations


for i = 1:Ns        % loop over Dt time steps

    % run explicit forward Euler solver
    RUN_03_explicit_forward_Euler

    % membrane diffusion
    Gbg   = A*Gbg;  
    PI3Km = A*PI3Km; 
    PIP2  = A*PIP2; 
    PIP3  = A*PIP3; 
    PTEN  = A*PTEN;   

    % cytoplasmic diffusion
    PI3Kc = mean(PI3Kc)*ones(N,1); 


    % write to files every second
    if mod(i*Dt,1) == 0
        RUN_02_write_to_files
        save output.mat
    end
    
end % end loop over Dt time steps


%% End of time stepping

save output.mat
fclose all;