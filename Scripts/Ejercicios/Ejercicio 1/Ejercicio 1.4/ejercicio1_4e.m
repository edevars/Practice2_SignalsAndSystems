clc;
clear all;
close all;

syms A t T;


% 5)    Calculo de los valores pedidos para la senial 5

f5=-(A/T).*t+A;

f5_vprom=vprom(f5,0,T,T,t);

f5_potencia=potencia(f5,0,T,T,t);

f5_vrms=vrms(f5,0,T,T,t);


fprintf('\n------------Funcion 5-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f5_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f5_vrms);

fprintf('\nPotencia: \n\n');
pretty(f5_potencia);