% Algoritmo de Criptografia de Palavras (MatLab/Freemat):
% O exercício foi proposto como um desafio na disciplina de Segurança da Informação, 
% consiste em criptografar uma frase através de palavras chaves. 
% Abaixo segue o algoritmo que desenvolvi para resolução do desafio.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PROGRAMA CRIPTOGRAFIA | SCARLET BARBOSA %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Software: Freemat Versão 4.2
% Linguagem Utilizada: Freemat/Matlab

% O PROGRAMA DESENVOLVIDO PODE CRIPTOGRAFAR QUALQUER MSG COM QUALQUER FRASE-CHAVE %

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ROTEIRO LÓGICO (para resoluçao do problema):%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1º - Extrair letras da chave
% 2º - Tabelar alfabeto criptografado e nao criptografado
% 3º - Criptografar a mensagem

clear all
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% 1 - Dados de Entrada %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alfabeto = 'abcdefghijklmnopqrstuvwxyz'; % alfabeto não criptografado
chave = 'estaciocuritiba'; % frase-chave
msg = 'oexerciciodeveserentregueateaproximasemana'; % mensagem a ser criptografada

ii = 0; % contador iniciando do 0
kk = 0; % contador iniciando do 0
i = length(chave); % extrai o tamanho do vetor 'chave' (15)
j = 1:i; % contador de 1 até 15(i)
k = length(alfabeto); % extrai o tamanho do vetor 'alf2' (26)

a = [1:i]; % cria vetor com 15 posiçoes
b = (1:i); % cria vetor com 15 posiçoes
r = zeros(i,k); 

for c = ii+1:i; % contador que percorrerá o vetor 'a'
    d = kk+1:k; % contador que percorrerá o vetor 'alfabeto'
    chave(c); % cmd que percorre todos as posiçoes do vetor chave
    a = chave; % cmd que armazena os valores do vetor 'chave' no vetor 'a'
    x = (a(c) == alfabeto(d)); % comando que procura a letra no alfabeto (cria vetor de 0 e 1, quando 1 possui a letra de 'a' em determinada posiçao do alfabeto(vetor 'alfabeto')
    indices_x = find(x);   % extraí o indice no alfabeto ( quando 0 entende que não tem, quando 1 entende que tem e armazena o indice)
    b(:,c) = indices_x; % cria vetor com os indices
end    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% 2 - Elimina valor repetido do vetor %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t = 1;
n = length(b);

while t<=n
    [y,posicao] = find(b==b(t));
    posicao(1) = [];
    b(posicao) = [];
    n = length(b);
    t = t+1;
end
disp(b)

tam_b = length(b);
alf_chave = alfabeto(b(1:tam_b)) % frase pós extraçao | vetor que acessa a posiçao(indice) das letras no alfabeto nao criptografado

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% 3 - Criar alfabeto criptografado %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alf_cripto = [b find(alfabeto)]; % concatena os 2 vetores para criar um alfabeto criptografado

tt = 1;
nn = length(alf_cripto);

while tt <= n;
    [yy, posi2] = find(alf_cripto == alf_cripto(tt));
    posi2(1) = [];
    alf_cripto(posi2) =[];
    nn = length(alf_cripto);
    tt = tt+1;
end

disp(alf_cripto);

tam_alf_cripto = length(alf_cripto);
alf_critografado = alfabeto(alf_cripto(1:tam_alf_cripto))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% 4 - Criptografar a mensagem %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tam_msg = length(msg); % tamanho do vetor msg
vetor_msg = (1:tam_msg); % 
bb = (1:tam_msg);

for cc = ii+1:tam_msg;
    dd = kk+1:k;
    msg(cc);
    vetor_msg = msg;
    xx = (vetor_msg(cc) == alfabeto(dd));
    indices_xx = find(xx);
    bb(:,cc) = indices_xx;
end

disp(bb)

tam_bb = length(bb);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% 5 - Mostrando a mensagem:  %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

msg_original = alfabeto(bb(1:tam_bb)) % mostra a mensagem original
msg_criptografada = alf_critografado(bb(1:tam_bb)) % mostra a mensagem criptografada
