%% plotting peak

load('output.mat')
CC1 = load('data_Gabg_time_course');
CC2 = load('data_Gbg_time_course');
CC3 = load('data_PI3Km_time_course');
CC4 = load('data_PI3Kc_time_course');
CC5 = load('data_PIP2_time_course');
CC6 = load('data_PIP3_time_course');
CC7 = load('data_actin_time_course');
CC8 = load('data_myoII_time_course');
CC9 = load('data_PTEN_time_course');

figure
subplot(3,3,1)
pcolor(CC1);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('Gabg')
colorbar

subplot(3,3,2)
pcolor(CC2);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('Gbg')
colorbar

subplot(3,3,3)
pcolor(CC3);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('PI3Km')
colorbar

subplot(3,3,4)
pcolor(CC4);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('PI3Kc')
colorbar

subplot(3,3,5)
pcolor(CC5);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('PIP2')
colorbar

subplot(3,3,6)
pcolor(CC6);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('PIP3')
colorbar

subplot(3,3,7)
pcolor(CC7);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('actin')
colorbar

subplot(3,3,8)
pcolor(CC8);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('myoII')
colorbar

subplot(3,3,9)
pcolor(CC9);shading flat
colormap(jet)
xlabel('Distance (\mum)')
ylabel('Time (s)')
xticks([1 N/2 N])
xticklabels({'0', L/2, '1'})
title('PTEN')
colorbar