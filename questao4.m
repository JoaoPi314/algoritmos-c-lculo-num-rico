%Achando um zero com fun��o interna

clear; clear all; clc;

x0 = input('x0 = ');
f = @F;
fprintf('Zero encontrado: %.10f', fzero(f, x0));
