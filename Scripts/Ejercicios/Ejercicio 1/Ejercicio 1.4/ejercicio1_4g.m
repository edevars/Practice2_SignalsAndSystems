clc;
clear all;
close all;

syms A t T;


% 7) Calculo de los valores pedidos para la senial 7

f7a=(2.*A/T).*t;

f7b=-((2.*A)/T).*(t-T);

f7_vprom=vprom((2.*A/T).*t,0,T/2,T,t)+vprom(-((2.*A)/T).*(t)+2.*A,T/2,T,T,t);

f7_vrms=sqrt((1/T).*(int(f7a.^2,t,0,T/2)+int(f7b.^2,t,T/2,T)));

f7_potencia=potencia((2.*A/T).*t,0,T/2,T,t)+potencia(-((2.*A)/T).*(t)+2.*A,T/2,T,T,t);

fprintf('\n------------Funcion 7-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f7_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f7_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f7_potencia);
