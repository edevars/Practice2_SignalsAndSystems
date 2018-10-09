clc;
clear all;
close all;

syms A t T to;


% 8) Calculo de los valores pedidos para la señal 8


to=-T/4;

f7a=((A)/((T/2)-to)).*(t-to);

f7b=((A)/(-(T/2)-to)).*(t-T-to);


f7_vprom=(1/T).*(int(f7a,t,to,T/2)+int(f7b,t,T/2,T+to));

f7_vrms=sqrt((1/T).*(int(f7a.^2,t,to,T/2)+int(f7b.^2,t,T/2,T+to)));

f7_potencia=potencia(f7a,to,T/2,T,t)+potencia(f7b,T/2,T+to,T,t);

fprintf('\n------------Funcion 8-------------\n')

fprintf('\nValor promedio: \n\n');
pretty(f7_vprom);

fprintf('\nValor vrms: \n\n');
pretty(f7_vrms);
 
fprintf('\nPotencia: \n\n');
pretty(f7_potencia);
