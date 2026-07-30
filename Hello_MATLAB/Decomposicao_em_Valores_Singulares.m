close all; clear all; clc;
%%
%     Curso do canal ExataMenteS
%     Aula 12 - Decomposição em Valores Singulares (SVD)
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%%

% Escolhendo de forma aleatória as linhas e colunas da matriz;
m = abs(round(10 * randn(1))); n = abs(round(10 * randn(1)));

% Criando a matriz;
A = round(10 * randn(m, n));
k0 = rank(A);

% Utilizando a função svd(X) para decompor a matriz;
[U,S,V] = svd(A); % Unitário quadrada(Umxm), retângular Diagonal com valores decrescentes em sua diagonal(Smxn)e Unitário quadrada(Vnxn);
V_real = V';
% rank escolhido de forma aleatória, mas é arbitrário;
if k0 > 1
    k1 = k0 - randi([1, k0 - 1]); 
else
    k1 = 1;
end
%Inicializando a matriz A1 com zeros
A1 = zeros(m, n); 

% Meu jeito!
%{
for i = 1:k1
    A1 = A1 + U(:, i) * S(i, i) * V_real(i, :);
end
%}
% Jeito melhor!
A1 = U(:,1:k1) * S(1:k1,1:k1) * V(:,1:k1)'; % Já escrever como transposta, pois trabalhamos com linha, que no caso da transposta é coluna

k2 = rank(A1);
%%

disp('Rank inicial = '); disp(k0);
disp('Rank desejado = '); disp(k1);
disp('Rank final = '); disp(k2);

% Imagem da Matriz Original
figure(1), clf
tam = [ -1 1 ] * norm(A) / 10; % Eu dividi por 10 apenas para aumentar a saturação das cores
subplot(131)
imagesc(A);
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title([ 'Matriz Original, rank =' num2str(rank(A)) ]) % num2str converte um Numero para uma String
                                                      % A gente declarou r como um numero mas
                                                      % no Plot da imagem ele tem que ser um character
                                                                      
% Imagem da Matriz Reduzida
subplot(132)
imagesc(A1)
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title([ 'Matriz Reduzida, rank =' num2str(rank(A1)) ])

% Erro entre as duas Matrizes
subplot(133)
imagesc(A-A1)
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title('Erro entre as duas Matrizes')

%{
%%
%     Curso do canal ExataMenteS
%     Aula 12 - Decomposição em Valores Singulares (SVD)
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%%
% Definindo a Matriz
m = 13;
n = 10;

% Escolhando o rank (Posto Matricial) desejado
r = 5;

% Matriz de numeros aleatorios
A = round( 13*randn(m,n) );

% Matriz SVD
[U,S,V] = svd( A );

% Reeconstrua a Matriz Original
B = U * S * V';
A - B

% Utilizando os primeiros "r"
A2 = U(:,1:r) * S(1:r,1:r) * V(:,1:r)';

% Verifique o rank e o size
rank( A2 )
size( A2 )

% Imagem da Matriz Original
figure(1), clf
tam = [ -1 1 ] * norm(A) / 10; % Eu dividi por 10 apenas para aumentar a saturação das cores
subplot(131)
imagesc(A);
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title([ 'Matriz Original, rank =' num2str(rank(A)) ]) % num2str converte um Numero para uma String
                                                      % A gente declarou r como um numero mas
                                                      % no Plot da imagem ele tem que ser um character
                                                                      
% Imagem da Matriz Reduzida
subplot(132)
imagesc(A2)
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title([ 'Matriz Reduzida, rank =' num2str(rank(A2)) ])

% Erro entre as duas Matrizes
subplot(133)
imagesc(A-A2)
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title('Erro entre as duas Matrizes')

%%
%}