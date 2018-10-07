clear all;
close all;
clc;

dt=1e-3;
t=-15:dt:15;

%inciso a
%Componente par
fp_t=(1/2).*(u(t)+u(-t));


%Componente impar
fi_t=(1/2).*(u(t)-u(-t));

plot(t,fp_t,'color','b','linewidth',2.5)
axis([-11 11 -.6 .6])
grid minor
hold on
plot(t,fi_t,'--','color','r','linewidth',2.5)
legend('Componente par','Componente impar')

figure(2)
%inciso b
%Componente par
fp_t=(t.*p((t-1)/4)-t.*p((-t-1)/4))/2;

%Componente impar
fi_t=(t.*p((t-1)/4)+t.*p((-t-1)/4))/2;
plot(t,fp_t,'color','b','linewidth',2.5)
axis([-4 4 -2 2])
grid minor
hold on
plot(t,fi_t,'--','color','r','linewidth',2.5)
legend('Componente par','Componente impar')

figure(3)
%Componente par
fp_t=(c_1_2(t)+c_1_2(-t))/2;
%Componente impar
fi_t=(c_1_2(t)-c_1_2(-t))/2;
plot(t,fp_t,'color','b','linewidth',2.5)
axis([-13 13 -3.5 3.5])
grid minor
hold on
plot(t,fi_t,'--','color','r','linewidth',2.5)
legend('Componente par','Componente impar')

figure(4)

%Componente par
fp_t=(d_1_2(t)+d_1_2(-t))/2;
%Componente impar
fi_t=(d_1_2(t)-d_1_2(-t))/2;

plot(t,fp_t,'color','b','linewidth',2.5)
axis([-7 7 -3.5 3.5])
grid minor
hold on
plot(t,fi_t,'--','color','r','linewidth',2.5)
legend('Componente par','Componente impar')
