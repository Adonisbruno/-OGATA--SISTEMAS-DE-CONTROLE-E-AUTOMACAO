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
% transforma��o da fun��o de transferencia para o espa�o de estados
[A, B, C, D] = tf2ss(numf, denf);
%% Programa 2.3
% transforma��o do espa�o de estados para fun��o de transferencia
[num, den] = ss2tf(A,B,C,D,1)
%% 



