clear all;
close all;
clc;

dt=1e-3;
t=-5:dt:5;

plot(t,u(t),'linewidth',3)
grid minor 
axis([-5 5 -.3 1.3])
title('Escalon unitario')
legend('u(t)')

y=u(t);