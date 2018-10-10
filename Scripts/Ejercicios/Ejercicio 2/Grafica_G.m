clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=120;

T=2*pi/wo;

t=0:dt:T;

A=13;

y=A.*sin(wo*t).*double(0<=t & t<=T/2);

%-----------Calculo Numerico----------


NumVprom=(1/T).*(trapz(t,y));

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=(A)/pi;

AnVrms=(A^2/4)^(1/2);

%-------------Valor promedio experimental

wo=120;

T=pi/wo;

t=0:dt:T;

A=13.4;

y=A.*sin(wo*t).*double(0<=t & t<=T/2);

ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION G======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f V',ExpVprom);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f V',NumVprom);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)