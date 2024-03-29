%Произвольные матрицы%
v = [3, 4];
w = [4; 3];
m = [5, 7; 12, 15];
%Матрицы специального вида%
m0 = [0, 0; 0, 0];
m1 = [1, 1; 1, 1];
mr = rand(2);
me = [1, 0; 0, 1];
%Вычисление матрицы M%
M = (v / m) * (mr + me);
%Обработка матрицы М%
[str_s, column_s] = size (M);
max_M = max(M(:));
min_M = min(M(:));
sum_M = sum(M(:));
prod_M = prod(M(:));
%Ввод матрицы А%
A = [-1.23654   9.5272  2.1815  4.5297 5.238    2.3439  1.4659;
      2.8767    4.7603  4.2683  2.6028 2.6997   0.5291  5.0222;
      2.059     4.9244  8.7242  2.4919 2.7565   8.6705  4.8267;
      1.6392    3.0574  7.737   3.2249 2.4287   4.3578  8.9045;
      3.3267    10.1745 3.2031  9.7044 3.3384   22.8564 7.6963;
      1.9371    3.2575  6.9681  7.3445 5.6299   19.9665 1.1599;
      3.0202    3.6819  5.4846  1.1845 1.925    4.5214  9.103];
%Выделение матрицы В%
B = A(3:7, 1:7);
B1 = B(1:5, 1:3);
C = [0.8762  0.7726   0.7582  0.8002 0.7962
     0.3556  0.6205   0.9317  0.8679 0.871
     0.906   0.9906   0.9514  0.9894 0.964];
%Умножение B1 на С без точки%
J1 = B1*C;
%Умножение B1 на С с точкой%
B1 = B(1:3, 1:5);
J2 = B1.*C;
%Деление В1 на С%
B1 = A(1:7, 1:7);
J3 = B1./A;
J3 = B1/A;
%Транспонирование матрицы А%
A = A';
