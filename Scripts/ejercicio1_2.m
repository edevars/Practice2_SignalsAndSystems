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

close all
figure(3)

f_t=(p((t-1)/2)+3.*p((2.*t-7)/6)+6.*p((t-7)/4)-2.*p((t-10)/2)+p((-t-1)/2)+3.*p((2.*-t-7)/6)+6.*p((-t-7)/4)-2.*p((-t-10)/2))/2;
plot(t,f_t,'color','b','linewidth',2.5)
grid minor
