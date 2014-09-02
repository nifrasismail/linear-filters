function [B] = BoxFilter(I,H)
if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col] = size(I);
B=zeros(row,col);


for x=3:row-2
    for y=3:col-2
        M2=[];
        for i=-2:2
            for j=-2:2
                a=I(x+i,y+j)*H(i+3,j+3);
                M2=[M2 a];
            end
        end
        a=mean(M2);
        B(x,y)=a;
    end
end
B=uint8(B);



