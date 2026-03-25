%% plotting mass

load('output.mat')
MM = load('data_mass_time_course');
figure
plot(MM)
title('total concentration of protein')
ylabel('Protein Concentration (\muM)')
xlabel('Time (s)')

