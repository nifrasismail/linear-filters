function [B] = CommonFilter(I,H)

%Convert the image into gray scale image
if length(size(I)) == 3
    I=rgb2gray(I);
end

%calculating the rows and cols
[row,col] = size(I);

%Create a new empty image
B=zeros(row,col);

%Calculate the rows and cols of filter matrics
[rowH,colH] = size(H);

%Calculate how many rows/cols to be remove
%in this case if 3X3 matrics 3/2 = 1.5 
%its floor value is 1
rem = floor(rowH/2);

%filterinf operation for each and every pixels
for x=(1+rem):row-rem
    for y=(1+rem):col-rem
        M2=[];
        for i=(-1*rem):rem
            for j=(-1*rem):rem
                a=I(x+i,y+j)*H(i+3,j+3);
                M2=[M2 a];
            end
        end
        a=mean(M2);
        B(x,y)=a;
    end
end
B=uint8(B);



