clc;
clear all;
close all;

syms A t T wo;

% 11) Calculo de los valores pedidos para la señal 11


f11=A.*sin(wo*t);

T=2*pi/wo;

f11_vprom=vprom(f11,0,T/2,T,t);

f11_vrms=vrms(f11,0,T/2,T,t);

f11_potencia=potencia(f11,0,T/2,T,t);

fprintf('\n------------Funcion 11-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f11_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f11_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f11_potencia);
