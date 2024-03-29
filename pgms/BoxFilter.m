function [B] = BoxFilter(I,H)
if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col] = size(I);
B=zeros(row,col);

[rowH,colH] = size(H);
rem = floor(rowH/2);
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



