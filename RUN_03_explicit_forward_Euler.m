for j = 1:Nr    % solve the reaction equations for time Dt

    % storing the current concentrations in 'old' to usein the Euler method

     Gabg_old =  Gabg;  
      Gbg_old =   Gbg;  
    PI3Kc_old = PI3Kc; 
    PI3Km_old = PI3Km;  
     PIP2_old =  PIP2; 
     PIP3_old =  PIP3; 
     PTEN_old =  PTEN;   
    actin_old = actin;   
    myoII_old = myoII; 
    
    % Euler method

    Gabg  = Gabg_old  + DtR*(k2 - k1*L.*Gabg_old - k15*Gabg_old);
    
    Gbg   = Gbg_old   + DtR*(k1*L.*Gabg_old + k5*myoII_old.*PI3Km_old - k3*Gbg_old - k4*Gbg_old.*PI3Kc_old);
    
    PI3Km = PI3Km_old + DtR*(k4*Gbg_old.*PI3Kc_old - k5*myoII_old.*PI3Km_old);
    
    PI3Kc = PI3Kc_old + DtR*(k5*myoII_old.*PI3Km_old - k4*Gbg_old.*PI3Kc_old);
    
    PIP2  = PIP2_old  + DtR*(k12*PIP3_old.*PTEN_old - k6*PI3Km_old.*PIP2_old);
    
    PIP3  = PIP3_old  + DtR*(k6*PI3Km_old.*PIP2_old - k12*PIP3_old.*PTEN_old);
    
    actin = actin_old + DtR*(k7*PIP3_old - k8*actin_old);
    
    myoII = myoII_old + DtR*(k9*PTEN_old - k13*myoII_old);
    
    PTEN  = PTEN_old  + DtR*(k10 - k11*actin_old.*PTEN_old - k14*PTEN_old);

    

end % end solve the reaction equations for time Dt