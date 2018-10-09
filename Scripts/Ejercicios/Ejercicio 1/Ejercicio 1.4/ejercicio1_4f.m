clc;
clear all;
close all;

syms A wo t T;


% 6)    Calculo de los valores pedidos para la senial 6


f6=(A/T).*(t);

f6_vprom=vprom(f6,0,T,T,t);

f6_potencia=potencia(f6,0,T,T,t);

f6_vrms=vrms(f6,0,T,T,t);

fprintf('\n------------Funcion 6-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f6_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f6_vrms);

fprintf('\nPotencia: \n\n');
pretty(f6_potencia);
