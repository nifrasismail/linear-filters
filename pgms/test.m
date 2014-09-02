% Read the image
I=imread('./../images/baboon.jpg');


Box=ones(5,5);


% Genrate Filtered Image
[B] = BoxFilter(I,Box);


% Generate Hisograms
[h,I] = histogram(I);
[hB,B] = histogram(B);


% Show the images
subplot(2,2,1);imshow(I);
subplot(2,2,2);plot(h);
subplot(2,2,3);imshow(B);
subplot(2,2,4);plot(hB);
