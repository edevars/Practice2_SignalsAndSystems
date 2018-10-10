clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=60;

T=2*pi/wo;

A=5;

%-----------Calculo Numerico----------

t=0:dt:T;

y=A*sin(wo.*t);

NumVprom=(1/T).*trapz(t,y);

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=0;

AnVrms=(A)/sqrt(2);

%-------------Valor promedio experimental

wo=59.95;

T=2*pi/wo;

t=0:dt:T;

A=5.2;

y=A*sin(wo.*t);

ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION A======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f mv',ExpVprom*1e3);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f mv',NumVprom*1e3);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)