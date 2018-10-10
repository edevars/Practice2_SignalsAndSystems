clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=120;

T=pi/wo;

t=0:dt:T;

A=12;

y=A.*sin(wo*t);

%-----------Calculo Numerico----------


NumVprom=(1/T).*(trapz(t,y));

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=(2*A)/pi;

AnVrms=(A^2/2)^(1/2);

%-------------Valor promedio experimental

wo=120;

T=pi/wo;

t=0:dt:T;

A=12.8;

y=A.*sin(wo*t);

ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION F======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f V',ExpVprom);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f V',NumVprom);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)