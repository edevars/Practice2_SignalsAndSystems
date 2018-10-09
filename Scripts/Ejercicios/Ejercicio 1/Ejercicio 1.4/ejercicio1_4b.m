clc;
clear all;
close all;

syms A wo t T;

%Calculo de los valores pedidos para la senial dos

T=pi/wo;

f2=A.*(sin(wo.*t)).^2;

f2_vprom=vprom(f2,0,T,T,t);

f2_potencia=potencia(f2,0,T,T,t);

f2_vrms=vrms(f2,0,T,T,t);


fprintf('\n------------Funcion 2-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f2_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f2_vrms);

fprintf('\nPotencia: \n\n');
pretty(f2_potencia);