clear all;
close all;
clc;

%--------Definicion de variables-------

dt=1e-3;

wo=60;

T=2*pi/wo;

t=0:dt:T;

A=5;

fa=((4.*A/T).*t).*double(0<=t & t<=T/4);

fb=-(4*A/T).*(t-(T/2)).*double(T/4<t & t<=(3*T)/4);

fc=(4*A/T).*(t-T).*double((3*T)/4<t & t<=T);

y=fa+fb+fc;


%-----------Calculo Numerico----------


NumVprom=(1/T).*(trapz(t,y));

NumVrms=sqrt((1/T).*trapz(t,y.^2));

%-----------------Valor Analiticos


AnVprom=0;

AnVrms=(A^2/3)^(1/2);

%-------------Valor promedio experimental

wo=60.31;

T=2*pi/wo;

t=0:dt:T;

A=5.2;

fa=((4.*A/T).*t).*double(0<=t & t<=T/4);

fb=-(4*A/T).*(t-(T/2)).*double(T/4<t & t<=(3*T)/4);

fc=(4*A/T).*(t-T).*double((3*T)/4<t & t<=T);

y=fa+fb+fc;


ExpVprom=(1/T).*trapz(t,y);

%-------------Mostrar datos------

fprintf('\n======================FUNCION C======================\n')

fprintf('\n\n====================Experimental====================\n\n');

fprintf('Valor promedio: %f mV',ExpVprom*1e3);

fprintf('\n\n====================Numerico========================\n\n');

fprintf('Valor promedio: %f mV',NumVprom*1e3);

fprintf('\n\nVRMS: %f V',NumVrms)

fprintf('\n\n====================Analitico========================\n\n');

fprintf('Valor promedio: %d V',AnVprom);

fprintf('\n\nVRMS: %f V', AnVrms)