%% Reaction diffusion program 
%  1D

%% Setting parameters and initial conditions.

% run settup file
RUN_01_settup

% store initial concentrations
RUN_02_write_to_files

%% storing initial conditions for SS check

      Gbg_ss =   Gbg;  
    PI3Km_ss = PI3Km;  
     PIP2_ss =  PIP2; 
     PIP3_ss =  PIP3; 
     PTEN_ss =  PTEN;   
    actin_ss = actin;   
    myoII_ss = myoII;

SS_checker = zeros(1,7);
SS_max     = 100; %s

solver = 1;
i = 0;
tolerance = 0.001;

% End setting parameters and initial conditions.
%% Solving the equations

while solver == 1
%for i = 1:Ns        % loop over Dt diffusion time steps
    i = i + 1;
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
    % and SS check
    if mod(i*Dt,1) == 0
        RUN_02_write_to_files

        % % checking for SS
        [SS_checker, Gbg_ss] = RUN_04_SS_checker(1,Gbg_ss, Gbg, SS_checker, tolerance, SS_max);
        [SS_checker,PI3Km_ss] = RUN_04_SS_checker(2, PI3Km_ss, PI3Km,  SS_checker, tolerance, SS_max);
        [SS_checker, PIP2_ss] = RUN_04_SS_checker(3, PIP2_ss, PIP2, SS_checker, tolerance, SS_max);
        [SS_checker, PIP3_ss] = RUN_04_SS_checker(4, PIP3_ss, PIP3, SS_checker, tolerance, SS_max);
        [SS_checker,actin_ss] = RUN_04_SS_checker(5, actin_ss, actin, SS_checker, tolerance, SS_max);
        [SS_checker,PTEN_ss] = RUN_04_SS_checker(6, PTEN_ss, PTEN, SS_checker, tolerance, SS_max);
        [SS_checker,myoII_ss] = RUN_04_SS_checker(7, myoII_ss, myoII, SS_checker, tolerance, SS_max);
        if sum(SS_checker(1:5)) == SS_max*5
            solver = 0;
        end
    end
    
end % end loop over Dt time steps (solver)


%% End of time stepping

save output.mat
fclose all;