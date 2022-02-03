A=2;
A=A+5;
A=A+5;
A=A+5;
%Display the value of A in the Command Window 
A
A=2;
for i=1:3
    %display the value of i in the Command Window
    i
    %Add 5 onto A and isplay in the Command Window 
    A=A+5
end 
A=2;
%Add 5 on to A 1000 times 
for i=1:1000
    A=A+5;
end 
%Display the value of A in the Command Window 
A
x=[1 3 4 8 6 5 3 2 2]
y=[3 3 1 5 3 2 8 4 2]
condition=y>2
ind=find(condition)
y(1,ind)
z=x(1,ind)
A=[2 5 8 6; 9 4 3 1; 7 12 10 11]
sum(A,1)
sum(A,2)
sum(A(:),1)
mean(A,1)
mean(A,2)
mean(A(:),1)
max(A,[],1)
max(A,[],2)
max(A(:),[],1)
