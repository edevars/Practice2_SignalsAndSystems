clear all;
close all;
clc;

dt=1e-3;
t=-11:dt:11;

plot(t,u(t),'linewidth',3)
grid minor 
axis([-5 5 -.3 1.3])
title('Escalon unitario')
legend('u(t)')