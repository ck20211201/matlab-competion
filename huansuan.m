function [a1 a2 b1 b2 c1 c2] = huansuan(r1,r2,n1,n2,s1,s2)
a1 = r1;
a2 = r2;
b1 = r1/n1;
b2 = r2*s2/n1;
c1 = r1*s1/n2;
c2 = r2/n2;
end