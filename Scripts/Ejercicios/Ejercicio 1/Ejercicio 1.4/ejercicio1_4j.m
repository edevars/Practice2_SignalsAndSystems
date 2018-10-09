clc;
clear all;
close all;

syms A t T wo;

% 10) Calculo de los valores pedidos para la señal 10


f10=A.*sin(wo*t);

T=pi/wo;

f10_vprom=vprom(f10,0,T,T,t);

f10_vrms=vrms(f10,0,T,T,t);

f10_potencia=potencia(f10,0,T,T,t);

fprintf('\n------------Funcion 9-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f10_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f10_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f10_potencia);
