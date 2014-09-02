% Read the image
I=imread('./../images/baboon.jpg');

% Various filter
Gauss=[0 1 2 1 0;1 3 5 3 1;2 5 9 5 2;1 3 5 3 1;0 1 2 1 0];
Box=ones(5,5);
Lap=[0 0 -1 0 0; 0 -1 -2 -1 0; -1 -2 16 -2 -1 ; 0 -1 -2 -1 0; 0 0 -1 0 0];

% Genrate Filtered Image
[G] = GaussFilter(I,Gauss);
[B] = BoxFilter(I,Box);
[L] = Laplacian(I,Lap);

% Generate Hisograms
[h,I] = histogram(I);
[hG,G] = histogram(G);
[hB,B] = histogram(B);
[hL,L] = histogram(L);

% Show the images
subplot(4,2,1);imshow(I);
subplot(4,2,3);imshow(G);
subplot(4,2,5);imshow(B);
subplot(4,2,7);imshow(L);

% Plot Histograms
subplot(4,2,2);plot(h);
subplot(4,2,4);plot(hG);
subplot(4,2,6);plot(hB);
subplot(4,2,8);plot(hL);