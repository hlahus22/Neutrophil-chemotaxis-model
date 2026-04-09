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

figure('Color', 'w');
subplot(3,3,1)
plot(CC1(:,1))
hold
plot(CC1(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
title('Gabg')
legend('back','front')

subplot(3,3,2)
plot(CC2(:,1))
hold
plot(CC2(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('Gbg')

subplot(3,3,3)
plot(CC3(:,1))
hold
plot(CC3(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('PI3Km')

subplot(3,3,4)
plot(CC4(:,1))
hold
plot(CC4(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('PI3Kc')

subplot(3,3,5)
plot(CC5(:,1))
hold
plot(CC5(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('PIP2')

subplot(3,3,6)
plot(CC6(:,1))
hold
plot(CC6(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('PIP3')

subplot(3,3,7)
plot(CC7(:,1))
hold
plot(CC7(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('actin')

subplot(3,3,8)
plot(CC8(:,1))
hold
plot(CC8(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('myoII')

subplot(3,3,9)
plot(CC9(:,1))
hold
plot(CC9(:,N/2))
ylabel('concentration (\muM)')
xlabel('Time (s)')
legend('back','front')
title('PTEN')
