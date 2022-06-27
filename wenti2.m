clc;
clear all;
data=xlsread('A_data.xlsx');

X=data(:,2);
Y=data(:,3);
F1 = [];
G1 = [];
F2 = [];
G2 = [];
syms b1 c1 b2 c2 a1 a2;
Z1 = [b1 c1];
Z2 = [b2 c2];
a1=1;
a2=1.2;
for a=1:size(X)-1
    F1 = [F1;log(X(a)/X(a+1))];
    G1 = [G1;X(a) Y(a)];
    F2 = [F2;log(Y(a)/Y(a+1))];
    G2 = [G2;X(a) Y(a)];
end
X1=[ones(50,1),G1];
alpha = 0.5;
b1=[-a1;Z1'];
[b1,bint,r,rint,stats]=regress(F1,X1,alpha);
X2=[ones(50,1),G2];
alpha = 0.5;
b2=[-a2;Z1'];
[b2,bint1,r1,rint1,stats1]=regress(F2,X2,alpha);


