function [G] = GaussFilter(I,H)
if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col] = size(I);
G=zeros(row,col);

for x=3:row-2
    for y=3:col-2
        M1=[];
        for i=-2:2
            for j=-2:2
                a=I(x+i,y+j)*H(i+3,j+3);
                M1=[M1 a];
            end
        end
        a=mean(M1);
        G(x,y)=a;
    end
end
G=uint8(G);



