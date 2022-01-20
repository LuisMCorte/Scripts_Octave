% Autores: Pablo Bermeo
%          Luis Corte
%          Sebastian Criollo
%
% Fecha: 10/11/2021
% Descripcion: Integraci�n
% Regla de Simpson 1/3

% Problema 1:
%   
#{
Todos los componentes el�ctricos, especialmente los que se venden en el mercado,
no coinciden con su valor nominal. Las variaciones en los materiales y la 
fabricaci�n, as� como las condiciones de funcionamiento, pueden afectar su valor. 
Supongamos que se dise�a un circuito que requiere un valor de componente espec�fico,
�Como podemos estar seguros de que la variaci�n del valor del componente dar� 
lugar a un comportamiento aceptable del circuito? Para resolver este problema 
se necesita una funci�n de densidad de probabilidad que se integrada para 
determinar el intervalo de confianza. Para que un oscilador tenga su frecuencia 
dentro de 5% del objetivo de 1 kHz, la probabilidad de que esto ocurra puede 
determinarse hallando el �rea total bajo la distribuci�n normal para el rango 
en cuesti�n: 

            f = 1/sqrt(2*pi) * e.^(-x^2/2)
            a = -2.15
            b = 2.9

Utilice la regla de 1/3 de Simpson con 4 segmentos para encontrar la frecuencia. 
#}
fprintf('Problema 1 \n')

%Datos 
a = -2.15;
b = 2.9;
f = @(x) 1/sqrt(2*pi) * e.^(-x^2/2);
n = 4;
v_analitico = 0.98236;

try
  
  %Llamado de la funcion
  [I] = simpson_onethird(a,b,f,n)
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
La visi�n humana tiene la notable capacidad de inferir formas 3D a partir de 
im�genes 2D. La pregunta interesante es: �podemos reproducir algunas de estas 
capacidades en un ordenador? S�, se puede hacer y para ello, se requiere la 
integraci�n de campos vectoriales. Es necesario integrar la siguiente integral.

              f = sqrt(x)*sin(x);

#}

%Datos 
a = 1;
b = 3;
f = @(x) sqrt(x)*sin(x);
n = 8;
v_analitico = 2.05363;

try
  
  %Llamado de la funcion
  [I] = simpson_onethird(a,b,f,n)
  %Calculo del error
  error = abs((v_analitico - I)/v_analitico)*100
  
catch err
  fprintf('Error: %s\n',err.message);
end_try_catch



