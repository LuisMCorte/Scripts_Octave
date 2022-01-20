function[a]=inv(x)
%Calcular la Matriz Inversa
%      [a] = susttucion(x)
%   Copyright 2021 Universidad de Cuenca.
%   $Revision: 0.1 $  $Date: 2021/11/4 3:00 $
%   Built-in function.
n = size(x,1); % Tama�o de la matriz
y = eye(n)% Matriz Identidad del tama�o n
a = [x y] %Matriz Aumentada para calcular la iversa
%Se realiza las operaciones pertinentes para calcular la matriz inversa
for k=1:n
    a(k,:)=a(k,:)/a(k,k);
    for j=k+1:n
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j+1;
  end
  k=k+1;
end
for k=n:-1:2
  for j=k-1:-1:1
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j-1;
  end
  k=k-1;
end
