%1 (a simple computation of sin of X)
clc
clear
i = 0;
tic
for t = 0:.01:500
    i = i + 1;
    y(i) = sin(t);
end
toc

t = 0:.01:500;
tic
y = sin(t);
toc

keyboard()
clc
clear

%2 (finding the negative values in a matrix and replacing them with 1)
A=[1 2 3 -5 5 10 7 8;-1 2 4 -8 7 9 7 4;5 -4 10 -4 -2 -7 1 3];
tic
for i= 1:3
    for j=1:8
        if A(i,j) < 0
            A(i,j) = 1;
        end
    end
end
A
toc

A=[1 2 3 -5 5 10 7 8;-1 2 4 -8 7 9 7 4;5 -4 10 -4 -2 -7 1 3];
tic
A(A<0) = 1
toc

keyboard()
clc
clear

%3 (matrix multiplication: multiplying a column vector with each column of a matrix)
A = [1;2;3];
B = [1 2 3 4 4 7 9 1;4 5 6 1 5 7 9 6;7 8 9 4 5 7 6 2];
tic
C = zeros(3,8);
for j=1:8
    C(:,j) = A .* B(:,j);
end
C
toc

tic
A = repmat(A,1,8);
C = A.*B
toc

keyboard()
clc
clear

%4 (matrix multiplication: multiplying a few matrices with each other)

A = [1 2 3 4 5 6 7 8 9 1 2 4 7 8 9 4];
B = [10 20 30 40 50 60 70 80 90 10 50 20 40 70 80 90];
C = [4 5 7 8 9 4 1 2 7 1 2 4 5 8 9 4;0 5 47 8 8 9 4 8 2 1 4 9 6 5 4 2; 0 0 0 1 5 7 9 6 4 1 2 5 4 7 6 0];
tic
D = zeros(1,3);
for i=1:3
    D(i)=sum(A.*B.*C(i,:));
end
D
toc
B = diag(B);
tic
D = A*B*C'
toc
