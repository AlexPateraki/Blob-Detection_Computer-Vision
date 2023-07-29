clear all;
close all;
clc;

I = imread('C:\Users\alexp\OneDrive\Υπολογιστής\fishes.jpg');
I = im2double(rgb2gray(I));
Ior = I;
K = fspecial("gaussian",[3 3],1);

figure;
imshow(I)

[a,b] = size(I);

for i = 1:5
        
    for j = 1:a
   
        for k = 1:b
 
        end
    
    end
    
end
sigma_init = 0.5;
sigma = sigma_init;
s_incr = 2;
cnt_incr = 1;

K = fspecial("gaussian",[3 3],sigma);

b1 = imfilter(I,K);

sigma = sigma_init;
sigma = sigma * (s_incr^cnt_incr) ; cnt_incr = cnt_incr + 1;

K = fspecial("gaussian",[3 3],sigma);

b2 = imfilter(I,K);

sigma = sigma_init;
sigma = sigma * (s_incr^cnt_incr) ; cnt_incr = cnt_incr + 1;

K = fspecial("gaussian",[3 3],sigma);

b3 = imfilter(I,K);

sigma = sigma_init;
sigma = sigma * (s_incr^cnt_incr) ; cnt_incr = cnt_incr + 1;

K = fspecial("gaussian",[3 3],sigma);

b4 = imfilter(I,K);

sigma = sigma_init;
sigma = sigma * (s_incr^cnt_incr) ; cnt_incr = cnt_incr + 1;

K = fspecial("gaussian",[3 3],sigma);

b5 = imfilter(I,K);

%---------------------------------------------------------------

dif0 = returnDiffIm(I,b1);

figure;
imshow(dif0)

dif1 = returnDiffIm(b1,b2)

figure;
imshow(dif1)

dif2 = returnDiffIm(b2,b3);

figure;
imshow(dif2)

dif3 = returnDiffIm(b3,b4);

figure;
imshow(dif3)

dif4 = returnDiffIm(b4,b5);

figure;
imshow(dif4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%% find extrema
kp1 = findKeypoints(dif0,dif1,dif2);
kp2 = findKeypoints(dif1,dif2,dif3);
kp3 = findKeypoints(dif2,dif3,dif4);

kp4 = findKeypoints(dif3,dif4,dif5);
kp5 = findKeypoints(dif4,dif5,dif6);
kp6 = findKeypoints(dif5,dif6,dif7);

kp7 = findKeypoints(dif6,dif7,dif8);
kp8 = findKeypoints(dif7,dif8,dif9);
kp9 = findKeypoints(dif8,dif9,dif10);

kp10 = findKeypoints(dif0,dif1,dif2);
kp11 = findKeypoints(dif1,dif2,dif3);
kp12 = findKeypoints(dif2,dif3,dif4);

kp13 = findKeypoints(dif0,dif1,dif2);
kp14 = findKeypoints(dif1,dif2,dif3);
kp15 = findKeypoints(dif2,dif3,dif4);
