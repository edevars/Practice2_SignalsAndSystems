clc;
clear all;
close all;

syms A wo t T to;


% 6)    Calculo de los valores pedidos para la senial 6

f6=(A/T).*(t-to);

f6_vprom=vprom(f6,to,to+T,T,t);

f6_potencia=potencia(f6,to,to+T,T,t);

f6_vrms=vrms(f6,to,to+T,T,t);

fprintf('\n------------Funcion 6-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f6_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f6_vrms);

fprintf('\nPotencia: \n\n');
pretty(f6_potencia);
