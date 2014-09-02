function [L]=Laplacian(I,H)


if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col] = size(I);
L=zeros(row,col);

for x=3:row-2
    for y=3:col-2
        M3=[];
        for i=-2:2
            for j=-2:2
                a=I(x+i,y+j)*H(i+3,j+3);
                M3=[M3 a];
            end
        end
        a=mean(M3);
        L(x,y)=a;
    end
end
L=uint8(L);




