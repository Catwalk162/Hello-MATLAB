close all; clc; clear all;
%% 
%     Curso do canal ExataMenteS
%     Aula 4 - Vetores e Matrizes
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro
%%

% crie um vetor de uma linha usando colchetes 
vetor0 = [1, 2, 3];

% crie um vetor com uma coluna usando colchetes
vetor1 =  [1; 2; 3];

% crie um vetor de uma coluna usando a transposta de uma linha
vetor2 = transpose(vetor0); % vetor2 = (vetor0)(apóstrofo);

% crie uma matriz 2x5
matriz0 = [1, 2, 3, 4, 5; 6, 7, 8, 9, 10];
 
% crie um vetor de uma linha com apenas o numero 1
vetor3 = ones(1, 30);
 
% crie uma coluna de vetores com todos com o mesmo valor
% use o valor de pi
vetor4 = ones(30, 1)*pi;
vetor5 = ones(30,1)*0 + pi;
% crie uma matriz de numeros aleatorios
matriz1 = randn(3);
matriz2 = rand(3);
% calcule a transposta dessa matriz e guarde ela em uma nova matriz
matrizt = transpose(matriz1);

% crie uma matriz quadrada
A = [1 2; 0 3];% eye(n)(Identidade), zeros(n)(Nula), ones(n)(Com apenas uns) e rand(n)/randn(n)(Números aleatórios)
 
% calcule a sua inversa
InvA = inv(A); % A^(-1);

% multiplique a sua matriz pela sua inversa
An = A*InvA;

% calcule os autovetores e autovalores dessa matriz
[autovetor, autovalor] = eig(A); %% Autovalores são as frequências naturais
M1 = A*autovetor(:, 1);
M2 = autovalor(1,1)*autovetor(:, 1); 
R1 = M1 - M2; 

M3 = A*autovetor;
M4 = autovetor*autovalor; 
R2 = M3 - M4; 
%%
%{
A.X = lambda.x, det(A - lambda.I) = 0;
%}