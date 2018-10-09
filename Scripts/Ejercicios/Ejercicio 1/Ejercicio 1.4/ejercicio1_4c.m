clc;
clear all;
close all;

syms A B t P w1 w2 C T;

%Calculo de los valores pedidos para la senial tres


f3_vprom=vprom(A.*sin(w1.*t),0,2.*pi/w1,2.*pi/w1,t)+vprom(B.*cos(w2.*t),0,2.*pi/w2,2.*pi/w2,t)+vprom(C,0,T,T,t);

f3_potencia=potencia(A.*sin(w1.*t),0,2.*pi/w1,2.*pi/w1,t)+potencia(B.*cos(w2.*t),0,2.*pi/w2,2.*pi/w2,t)+potencia(C,0,T,T,t);

f3_vrms=vrms(A.*sin(w1.*t),0,2.*pi/w1,2.*pi/w1,t)+vrms(B.*cos(w2.*t),0,2.*pi/w2,2.*pi/w2,t)+potencia(C,0,T,T,t);

fprintf('\n------------Funcion 3-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f3_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f3_vrms);

fprintf('\nPotencia: \n\n');
pretty(f3_potencia);
