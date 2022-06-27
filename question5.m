clc;
clear all;
clf('reset');
 
a1 = 0.25;
a2 = 0.5;
b1 = 0.5;
b2 = 0.25;
c1 = 0.5;
c2 = 0.25;
num = 30;    %迭代次数。不会影响图像形状
 
x(1)=0.5;
y(1)=0.5;
 
for k=1:4
    a1=0.5*k;
    for n=1:num
        x(n+1)=x(n)*exp(a1-b1*x(n)-c1*y(n));
        y(n+1)=y(n)*exp(a2-b2*x(n)-c2*y(n));
    end
    t=0:num;
    subplot(1,4,k)
    H=plot(t,x,'r',t,y,'b','linewidth',1),legend('x种群','y种群');
    hold on
    xlabel('迭代次数');
    ylabel('种群数量');
end
