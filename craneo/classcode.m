clear
close all
clc

Ax = imread ('meningioma.jpg');
Axg = rgb2gray(Ax);
imshow(Axg);
imagesc(Axg,[0 255]);
colormap('gray');
colorbar;

Avector = Axg(:);

figure;
for n = 8:-1:1
    Avc = cuantificador (Avector,n);
    Ac = reshape(Avc,size(Axg,1),size(Axg,2));
    subplot (2,4,n);
    imshow(Ac);
    imagesc (Ac, [0 (2^n)-1]);
    colormap('gray');
    colorbar;
    title(strcat(num2str(n), '-bits'));  
end