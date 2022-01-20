% Autores: Pablo Bermeo
%          Luis Corte
%          Sebastian Criollo
%
% Fecha: 2021/12/02
% Descripcion: Integraci�n
% Gauss Chebyshev

% Problema 1:
%   
#{
La visi�n humana tiene la notable capacidad de inferir formas 3D a partir de 
im�genes 2D. La pregunta intrigante pregunta es: �podemos reproducir algunas 
de estas capacidades en un ordenador? S�, se puede hacer y para ello, se 
requiere la integraci�n de campos vectoriales. Es necesario integrar la 
siguiente integral. 

            f = (1-(x^2))^(3/2)
            n = 2

#}
fprintf('Problema 1 \n')

%Datos 
f = @(x) (1-(x^2))^2;
n = 2;
v_analitico = 1.18;

try
  
  %Llamado de la funcion
  [I] = chebyshev(f,n)
  %Calculo del error
  error = abs((v_analitico - I)/v_analitico)*100
  
catch err
  fprintf('Error: %s\n',err.message);
end_try_catch



clear;
fprintf('\n')
fprintf('\n')
fprintf('Problema 2 \n')
%-----------------------------------------------------------------------------------------------------

% Problema 2:
%   
#{
Todos los componentes el�ctricos, especialmente los que se venden en el mercado,
 no coinciden con su valor nominal. Las variaciones en los materiales y la 
 fabricaci�n, as� como las condiciones de funcionamiento, pueden afectarsu 
 valor. Supongamos que se dise�a un circuito que requiere un valor de componente
 espec�fico,�C�mo podemos estar seguros de que la variaci�n del valor del 
 componente dar� lugar a un comportamiento aceptable del circuito?
Para resolver este problema se necesita una funci�n de densidad de probabilidad 
que seintegrada para determinar el intervalo de confianza. Para que un oscilador
 tenga su frecuencia dentro de 5% del objetivo de 1 kHz, la probabilidad de que 
 esto ocurra puede determinarse hallando el �rea total bajo la distribuci�n 
 normal para el rango en cuesti�n: 


                  f = (x^2)/sqrt(1-(x^2))

#}

%Datos 
f = @(x) (x^2);
n = 3;
v_analitico = 1.5707;

try
  
  %Llamado de la funcion
  [I] = chebyshev(f,n)
  %Calculo del error
  error = abs((v_analitico - I)/v_analitico)*100
  
catch err
  fprintf('Error: %s\n',err.message);
end_try_catch