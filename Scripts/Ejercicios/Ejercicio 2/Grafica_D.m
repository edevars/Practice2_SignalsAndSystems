clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=60;

T=2*pi/wo;

t=0:dt:T;

A=10;

ya=((2.*A/T).*t).*double(0<=t & t<=T/2);

yb=(-((2.*A)/T).*(t-T)).*double(T/2<t & t<=T);

y=ya+yb;

%-----------Calculo Numerico----------


NumVprom=(1/T).*(trapz(t,y));

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=A/2;

AnVrms=(A^2/3)^(1/2);

%-------------Valor promedio experimental

wo=59.95;

T=2*pi/wo;

t=0:dt:T;

A=10.2;

ya=((2.*A/T).*t).*double(0<=t & t<=T/2);

yb=(-((2.*A)/T).*(t-T)).*double(T/2<t & t<=T);

y=ya+yb;


ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION D======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f V',ExpVprom);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f V',NumVprom);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)