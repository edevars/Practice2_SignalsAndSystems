clc;
clear all;
close all;

syms A B wo t P;

%-------------Calculo de los valores pedidos para la senial cuatro

f4=((A-B)/2)*(sin(wo*t+P))+((A+B)/2);

f4_vprom=vprom(f4,0,2.*pi/wo,2.*pi/wo,t);

f4_potencia=potencia(f4,0,2.*pi/wo,2.*pi/wo,t);

f4_vrms=vrms(f4,0,2.*pi/wo,2.*pi/wo,t);



fprintf('\n------------Funcion 4-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f4_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f4_vrms);

fprintf('\nPotencia: \n\n');
pretty(simplify(f4_potencia));
