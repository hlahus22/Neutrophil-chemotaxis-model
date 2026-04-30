%% plotting mass

load('output.mat')
MM = load('data_mass_time_course');

figure('Color', 'w');
plot(MM)
title('total concentration of protein')
ylabel('Protein Concentration (\muM)')
xlabel('Time (s)')
legend('Gabg','Gbg','PI3Kc','PI3Km','PIP2','PIP3','PTEN','actin','myoII')

