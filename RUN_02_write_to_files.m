%% Writing membrane concentrations to file

fprintf(Gabg_store,'%5.4f\t',Gabg');
fprintf(Gabg_store,'\n');

fprintf(Gbg_store,'%5.4f\t',Gbg');
fprintf(Gbg_store,'\n');

fprintf(PI3Kc_store,'%5.4f\t',PI3Kc');
fprintf(PI3Kc_store,'\n');

fprintf(PI3Km_store,'%5.4f\t',PI3Km');
fprintf(PI3Km_store,'\n');

fprintf(PIP2_store,'%5.4f\t',PIP2');
fprintf(PIP2_store,'\n');

fprintf(PIP3_store,'%5.4f\t',PIP3');
fprintf(PIP3_store,'\n');

fprintf(PTEN_store,'%5.4f\t',PTEN');
fprintf(PTEN_store,'\n');

fprintf(actin_store,'%5.4f\t',actin');
fprintf(actin_store,'\n');

fprintf(myoII_store,'%5.4f\t',myoII');
fprintf(myoII_store,'\n');

% End writing membrane concentrations to file
%% Calculate protein mass & write to file

fprintf(m_store,'%5.4f\t', mean(Gabg ));
fprintf(m_store,'%5.4f\t', mean(Gbg  ));
fprintf(m_store,'%5.4f\t', mean(PI3Kc));
fprintf(m_store,'%5.4f\t', mean(PI3Km));
fprintf(m_store,'%5.4f\t', mean(PIP2 ));
fprintf(m_store,'%5.4f\t', mean(PIP3 ));
fprintf(m_store,'%5.4f\t', mean(PTEN ));
fprintf(m_store,'%5.4f\t', mean(actin));
fprintf(m_store,'%5.4f\t', mean(myoII));
fprintf(m_store,'\n');

% End calculate protein mass & write to file
