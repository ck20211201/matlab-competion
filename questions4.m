a2=0.9;
b1=0.5;
b2=0.09;
c1=0.1;
c2=0.5;
x0=10;
y0=9;
num = 50;%迭代次数，观察num时间内的变化。不会影响图像形状
i=1;
ANS = [x0 y0];
for a1=0.5:0.1:4.5
    for n=0:0.1:50
        xn = ANS(i,1);
        yn = ANS(i,2);
        i=i+1;
        x = xn*exp(a1-b1*xn-c1*yn);
        y = yn*exp(a2-b2*xn-c2*yn);
        ANS = [ANS;x y];
        if n>25
        plot(a1,x,'k.');
        hold on;
        end
        ANS = [ANS;x y];
    end
end
%t=0:0.1:50;
%plot(t,ANS(1:501,1),'r',t,ANS(1:501,2),'b')


%x种群：蓝色线
%y种群：红色线