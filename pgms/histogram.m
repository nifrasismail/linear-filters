function [h,I] = histogram(I)
K=256;

%Change Color image into Gray Scale 
if length(size(I)) == 3
    I=rgb2gray(I);
end

%Count the rows and Columns in image
[r,c]=size(I);

%Duplicate the image
h=zeros(1,K);


for i=1:r
    for j=1:c
        a=I(i,j);
        h(a+1) = h(a+1)+1;
    end
end

