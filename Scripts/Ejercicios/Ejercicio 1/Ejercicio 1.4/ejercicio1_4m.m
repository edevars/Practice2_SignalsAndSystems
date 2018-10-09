clc;
clear all;
close all;

syms A t T to a wo;

% 13) Calculo de los valores pedidos para la señal 13


f13=A.*sin(wo*t);


T=2*pi/wo;

to=a/wo;


f13_vprom=vprom(f13,to,T/2,T,t);

f13_vrms=vrms(f13,to,T/2,T,t);

f13_potencia=potencia(f13,to,T/2,T,t);

fprintf('\n------------Funcion 13-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f13_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f13_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f13_potencia);