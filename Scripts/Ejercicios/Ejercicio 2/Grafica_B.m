clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=60;

T=2*pi/wo;

t=0:dt:T;

A=8;

B=-2;

%-----------Calculo Numerico----------

y=((A-B)/2)*sin(wo.*t)+((A+B)/2);

NumVprom=(1/T).*trapz(t,y);

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=A/2 + B/2;

AnVrms=((3*A^2)/8 + (A*B)/4 + (3*B^2)/8)^(1/2);

%-------------Valor promedio experimental

wo=59.88;

T=2*pi/wo;

A=8.2;

B=8.2-10.2;

y=((A-B)/2)*sin(wo.*t)+((A+B)/2);

ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION B======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f V',ExpVprom);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f V',NumVprom);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)