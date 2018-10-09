clc;
clear all;
close all;

syms A wo t P T;

%Calculo de los valores pedidos para la senial uno

T=2*pi/wo;

f1=A.*sin(wo.*t+P);

f1_vprom=vprom(f1,0,T,T,t);

f1_potencia=potencia(f1,0,T,T,t);

f1_vrms=vrms(f1,0,T,T,t);


fprintf('\n------------Funcion 1-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f1_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f1_vrms);

fprintf('\nPotencia: \n\n');
pretty(f1_potencia);
