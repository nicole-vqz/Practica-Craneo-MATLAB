%Leer la imagen
Ax = imread('craneo.jpg');
% Convertir a escala de grises
Axg = rgb2gray(Ax);
% Convertir la imagen a vector columna
Avector = Axg(:);
% Valores de bits 
bits = [1 2 4 8];

figure

subplot(2,3,1)
imshow(Axg)
title('Original')

for k = 1:length(bits)

   
    Aq_indices = cuantificador(Avector, bits(k));

    %Libreria de codigos
    codebook = 0 : (255 / ((2^bits(k)) - 1)) : 255;
    
    %Mapear los grises
    Aq_grises = codebook(Aq_indices + 1);

    %Reconstruccion de la imagen
    Aq = reshape(Aq_grises, size(Axg,1), size(Axg,2));

    
    subplot(2,3,k+1)
    imshow(uint8(Aq)) 
    title([num2str(bits(k)) ' bits'])

end