clc;
clear all;
clf('reset')

a2=0.9;
b1=0.5;
b2=0.09;
c1=0.1;
c2=0.5;

x(1)=0.5;
y(1)=0.5;

x_min = 2.06;  %a1取值起点
x_max = 2.09;  %a1取值终点
step = 0.001;  %步长

for a1=x_min:step:x_max
    for n=1:2000
	x(n+1)=x(n)*exp(a1-b1*x(n)-c1*y(n));
	y(n+1)=y(n)*exp(a2-b2*x(n)-c2*y(n));
    if n>=1900
        subplot(1,2,1);xlim([x_min x_max]);plot(a1,x(n),'.r');
        hold on;
        subplot(1,2,2);xlim([x_min x_max]);plot(a1,y(n),'.b');
        hold on;
    end
    end
end
subplot(1,2,1);xlabel('a1');ylabel('x种群数量')
subplot(1,2,2);xlabel('a1');ylabel('y种群数量')