function [L U]= Doolittle(a,b)
  
% Factorizaci�n LU de la Matriz por Crout
  n = size(a,1);
  m = length(b);
  
  %captura de errores 
  if n ~= m
    msgID = 'Gauss Pivote : Dimension Matriz';
    msg = 'La matriz aumentada tiene dimensi�n incorrecta';
    error(msgID,msg)
  endif
  
  U = zeros(n); 
  L = eye(n);  %Creamos las matrices para reallizar la factorizaci�n
  
%Algoritmo de Doolittle

  for k=1:n
    for j=k:n
      U(k,j) = -a(k,j)-L(k,1:k-1)*U(1:k-1,j);
    endfor
   
    for i=k+1:n
      L(i,k) = -(a(i,k)-L(i,1:k-1)*U(1:k-1,k))/U(k,k);
    endfor  
  endfor
endfunction
  
%C =[L b'];             %Ly = b
%Y = SustitucionP(C);
%D =[U Y'];
%SustitucionR(D)       %Ux=y