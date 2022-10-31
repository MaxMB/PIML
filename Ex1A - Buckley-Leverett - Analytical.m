close, clear, clc;
%%% Shock
us = sqrt(0.5); % shock
xi_s = 2*us*(1-us) / (2*us^2 -2*us +1)^2; % xi shock
ts = [0.25, 0.5, 0.75]; % time sample
xs = ts * xi_s; % shock position

%%% Simulation
x_step = 1e-3;
x1 = x_step : x_step : xs(1);
x2 = x_step : x_step : xs(2);
x3 = x_step : x_step : xs(3);

t1 = ts(1);
xi1 = x1 / t1;
u1 = 0.5 + sqrt(sqrt((1+0.5./xi1).^2-1)/2 -0.25 -0.25./xi1);
x1 = [0, x1, xs(1), 1];
u1 = [1, u1, 0, 0];

t2 = ts(2);
xi2 = x2 / t2;
u2 = 0.5 + sqrt(sqrt((1+0.5./xi2).^2-1)/2 -0.25 -0.25./xi2);
x2 = [0, x2, xs(2), 1];
u2 = [1, u2, 0, 0];

t3 = ts(3);
xi3 = x3 / t3;
u3 = 0.5 + sqrt(sqrt((1+0.5./xi3).^2-1)/2 -0.25 -0.25./xi3);
x3 = [0, x3, xs(3), 1];
u3 = [1, u3, 0, 0];

%%% Plot
figure(1), set(gcf,'color','w');
subplot(131), plot(x1,u1,'k'), grid on;
title(['t = ' num2str(t1)]), xlabel('x'), ylabel('u(t,x)');
subplot(132), plot(x2,u2,'k'), grid on;
title(['t = ' num2str(t2)]), xlabel('x'), ylabel('u(t,x)');
subplot(133), plot(x3,u3,'k'), grid on;
title(['t = ' num2str(t3)]), xlabel('x'), ylabel('u(t,x)');