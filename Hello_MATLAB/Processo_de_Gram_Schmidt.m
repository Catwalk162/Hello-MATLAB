close all; clc; clear all;
%%
%     Curso do canal ExataMenteS
%     Aula 10 - Processo de Gram Schmidt
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro
%%

% Crie uma matriz
m = 4;% m = randi(10); % Número de linhas
n = 3;% n = randi(10); % Número de colunas

A = round( 10 * randn(m,n) );

GramSch = A(:, 1);

GramSch = A(:, 1)/norm(A(:, 1));

for i = 2: n
    ort = A(:, i);
    
    for j = 1:i - 1
        
        proj = dot(ort, GramSch(:, j))/ dot(GramSch(:, j), GramSch(:, j));
        ort = ort - proj * GramSch(:, j);
    end
    GramSch(:, i) = ort / norm(ort);
end

PE0 = sum(GramSch(:, 1).*GramSch(:, 2))
PE1 = sum(GramSch(:, 1).*GramSch(:, 1))

Id1 = GramSch * GramSch'
Id2 = GramSch' * GramSch
% https://pt.wikipedia.org/wiki/Processo_de_Gram-Schmidt

% Atencao: se n>m, apenas as primeiras m colunas sao validas

%% Uma implementacao melhor e mais estavel, utilizando a decomposicao QR

% Decomposicao QR
[Q,R] = qr( A ); 

% Na decoposicao QR, a matriz Q pro sua definicao e uma matriz unitaria e ortogonal
GramSch2 = Q; 

% Mostre que as colunas sao ortogonais entre si
% Mostre que e ortogonal pela multiplicacao matricial
Id3 = GramSch2 * GramSch2';
Id4 = GramSch2' * GramSch2;