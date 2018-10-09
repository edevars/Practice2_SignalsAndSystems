clc;
clear all;
close all;

syms A a t to T wo;

% 12) Calculo de los valores pedidos para la señal 12


f12=A.*sin(wo*t); %definida desde t0 hasta T

T=pi/wo;

to=a/wo;

f12_vprom=vprom(f12,to,T,T,t);

f12_vrms=vrms(f12,to,T,T,t);

f12_potencia=potencia(f12,to,T,T,t);

fprintf('\n------------Funcion 12-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f12_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f12_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f12_potencia);