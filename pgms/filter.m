function I=filter(I,H,N)
if length(size(I)) == 3
    I=rgb2gray(I);
end
N=5;
[row,col] = size(I);
J=zeros(row,col);
for x=3:row-2
    for y=3:col-2
        M=[];
        for i=-2:2
            for j=-2:2
                a=I(x+i,y+j)*H(i+3,j+3);
                M=[M a];
            end
        end
        a=mean(M);
        J(x,y)=a;
    end
end
J=uint8(J);
subplot(1,2,1);imshow(I);
subplot(1,2,2);imshow(J);


