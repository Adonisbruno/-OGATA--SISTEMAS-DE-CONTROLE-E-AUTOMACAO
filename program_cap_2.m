%% Programa 2.1
num1 = [10];
den1 = [1 2 10];
num2 = [5];
den2 = [1 5];
% sistema 1
printsys(num1,den1)
% sistema 2
printsys(num2,den2)
% serie
[nums, dens] = series(num1, den1, num2, den2);
printsys(num, den)
% paralelo
[nump, denp] = parallel(num1, den1, num2, den2);
printsys(num, den)
% realimentado
[numf, denf] = feedback(num1, den1, num2, den2);
printsys(num, den)
%% Programa 2.2
% transformação da função de transferencia para o espaço de estados
[A, B, C, D] = tf2ss(numf, denf);
%% Programa 2.3
% transformação do espaço de estados para função de transferencia
[num, den] = ss2tf(A,B,C,D,1)
%% 



