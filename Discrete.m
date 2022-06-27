x=zeros(1);y=zeros(1);
a2=0.9;
b1=0.5;
b2=0.09;
c1=0.1;
c2=0.5;
x(1)=0.5;
y(1)=0.5;
for a1=0.5:0.01:4.5
    for n=1:500
	x(n+1)=x(n)*exp(a1-b1*x(n)-c1*y(n));
	y(n+1)=y(n)*exp(a2-b2*x(n)-c2*y(n));
    if n>=200
        plot(a1,x(n),'.b')
        hold on;
    end
    end
end
%figure;
%t=1:4001;
%H=plot(t,x,'r',t,y,'b');%1000
%set(H,'linestyle','none','marker','.','markersize',1)
%xlabel('n');ylabel('y');