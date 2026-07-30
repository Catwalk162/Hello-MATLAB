close all; clear all; clc;
%%
%     Curso do canal ExataMenteS
%     Aula 13 - Matriz Hermitiana
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%%

% Dois vetores, um deles tem que ser complexo
a = [ 3 2 ];
b = [ 1 3j ];

% Calcule a transposta com o simbolo '
a';
b'; % Transposta Hermitiana
% use a funcao transpose
transpose(a);
transpose(b);
% ou use .'  :p
a.';
b.';
% Matrizes
A = complex( round( 10*(randn(5,4)) ), round( 10*(randn(5,4)) ) );

% Matriz Hermitiana Transposta
Aht0 = A';
% regular transpose
Aht1 = transpose(A);
Aht2 = A.';

% Crie um vetor complexo
c = [ 3 4i ];

% Plot como uma linha no Plano Z ( Plano Complexo )
figure(1), clf
plot(real(c),imag(c),'b','linew',3)
grid minor;
axis([-1 1 -1 1]*norm(c)*2)
xlabel('Eixo Real'), ylabel('Eixo Imaginario')

% O modulo do vetor e 5, certo?
ctamanho = sqrt(3^2 + 4^2); % Não pode usar c * c.'

% O tamanho nao pode ser negativo nem numero complexo
% Devemos Matriz Hermitiana Transposta
ctamanho = sqrt(c * c');

% Poderiamos usar norm(c), mas ai perderia a graca :)
