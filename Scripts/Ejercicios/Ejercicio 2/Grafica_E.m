clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=60;

T=2*pi/wo;

t=0:dt:T;

A=10;

Ta=T/2;

y=A*double(0<=t & t<=Ta);

%-----------Calculo Numerico----------


NumVprom=(1/T).*(trapz(t,y));

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=(A*Ta)/T;

AnVrms=((A^2*Ta)/T)^(1/2);

%-------------Valor promedio experimental

wo=60.1;

T=2*pi/wo;

t=0:dt:T;

A=10.2;

y=A*double(0<=t & t<=Ta);

ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION E======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f V',ExpVprom);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f V',NumVprom);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)