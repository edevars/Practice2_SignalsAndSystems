clc;
clear all;
close all;

syms A T t Ta;

% 11) Calculo de los valores pedidos para la señal 11


f9=A; %Definida de 0 hasta Ta

f9_vprom=vprom(f9,0,Ta,T,t);

f9_vrms=vrms(f9,0,Ta,T,t);

f9_potencia=potencia(f9,0,Ta,T,t);

fprintf('\n------------Funcion 9-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f9_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f9_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f9_potencia);