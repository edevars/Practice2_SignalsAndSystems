clc;
clear all;
close all;

%-------Demostracion de la suma de CD y CA


%Definicion del vector tiempo

t=-20:1e-3:20;

%   1)  Señal uno A*sin(wo*t + P), con A=2, wo=1 y P=0

f1_t=2.*sin(t);

fcd1=0;

fca1=f1_t-fcd1;

fr1=fca1+fcd1;

    %Señal original f(t)
    subplot(2,2,1)
    plot(t,f1_t,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=A sin(w_{0}t + \phi) $$','interpreter','latex','fontsize',16)
    axis([-2*pi 2*pi -2.3 2.3])
    grid minor

    %Señal f(t)= fCD + fCA
    subplot(2,2,3)
    plot(t,fr1,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=f_{CD}+f_{CA} $$','interpreter','latex','fontsize',16)
    axis([-2*pi 2*pi -2.3 2.3])
    grid minor

    %Señal de CD
    subplot(2,2,2)
    plot(t,fcd1.*double( -10<t & t<10),'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CD} $$','interpreter','latex','fontsize',16)
    axis([-2*pi 2*pi -2.3 2.3])
    grid minor

    %Señal de CA
    subplot(2,2,4)
    plot(t,fca1,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CA} $$','interpreter','latex','fontsize',16)
    axis([-2*pi 2*pi -2.3 2.3])
    grid minor

%   2)  Señal uno A*(cos(wo*t)).^2, con A=3, wo=1

A=3; wo=1;

f2_t=A.*(cos(wo.*t)).^2;

fcd2=A/2;

fca2=f2_t-fcd2;

fr2=fca2+fcd2;

figure(1)
    %Señal original f(t)
    subplot(2,2,1)
    plot(t,f2_t,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=A(cos^{2}(w_{0}t)) $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal f(t)= fCD + fCA
    subplot(2,2,3)
    plot(t,fr2,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=f_{CD}+f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal de CD
    subplot(2,2,2)
    plot(t,fcd1.*double( -10<t & t<10),'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CD} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal de CA
    subplot(2,2,4)
    plot(t,fca1,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

%   3)  Señal de A.*sin(w1.*t)+B.*sin(w2.*t)+C

A=3;B=4; w1=1; w2=3;C=10;

f3_t=A.*sin(w1.*t)+B.*sin(w2.*t)+C;

fcd3=C;

fca3=f3_t-fcd3;

fr3=fca3+fcd3;

figure(2)
    %Señal original f(t)
    subplot(2,2,1)
    plot(t,f3_t,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=A(cos^{2}(w_{0}t)) $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal f(t)= fCD + fCA
    subplot(2,2,3)
    plot(t,fr3,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=f_{CD}+f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal de CD
    subplot(2,2,2)
    plot(t,fcd3.*double( -10<t & t<10),'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CD} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal de CA
    subplot(2,2,4)
    plot(t,fca3,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

%   4)  Señal de ((A-B)/2).*sin(wo.*t+P)+(A+B)/2

A=3;B=4; wo=1; P=0;

f4_t=((A-B)/2).*sin(wo.*t+P)+(A+B)/2;

fcd4=(A+B)/2;

fca4=f4_t-fcd4;

fr4=fca4+fcd4;

figure(3)
    %Señal original f(t)
    subplot(2,2,1)
    plot(t,f4_t,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)= [\frac{A-B}{2}]sin(w_{0}t+\phi)+[\frac{A+B}{2}]$$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal f(t)= fCD + fCA
    subplot(2,2,3)
    plot(t,fr4,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=f_{CD}+f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal de CDsubplot(2,2,3)
    plot(t,fr4,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=f_{CD}+f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor
    subplot(2,2,2)
    plot(t,fcd4.*double( -10<t & t<10),'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CD} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor

    %Señal de CA
    subplot(2,2,4)
    plot(t,fca4,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*pi 2*pi])
    grid minor
    
    
 %   5)  Señal -Sawtooth
 


A=2; T=2.*pi;

%Construccion de la funcion -A.*sawtooth(t)+A 
f5_t=0;

for n=min(t):max(t)
 
    f5_t=f5_t+((-A/T).*(t-n.*T)+A).*double(n.*T<t & t<(n+1).*T);
 
end


fcd5=A/2;

fca5=f5_t-fcd5;

fr5=fca5+fcd5;

figure(4)
    %Señal original f(t)
    subplot(2,2,1)
    plot(t,f5_t,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=-sawtooth(t) $$','interpreter','latex','fontsize',16)
    xlim([-2*T 2*T])
    grid minor


    %Señal f(t)= fCD + fCA
    subplot(2,2,3)
    plot(t,fr5,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f(t)=f_{CD}+f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*T 2*T])
    grid minor

    %Señal de CD
    subplot(2,2,2)
    plot(t,fcd5.*double( -2*T<t & t<2*T),'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CD} $$','interpreter','latex','fontsize',16)
    xlim([-10 10])
    grid minor

    %Señal de CA
    subplot(2,2,4)
    plot(t,fca5,'linewidth',2.5,'color',rand(1,3));
    title(' $$ f_{CA} $$','interpreter','latex','fontsize',16)
    xlim([-2*T 2*T])
    grid minor