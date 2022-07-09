% For Ýle Treshold
m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test1.jpg');
figure,imshow(m1);
[satir sutun]=size(m1);
for i=1:satir
    for j=1:sutun
        if(m1(i,j)>=128)
            m2(i,j)=255;
        else
            m2(i,j)=0;
        end
    end
end
figure,imshow(m2);

% Klavyeden Girilen Treshold For Ýle

[satir sutun]=size(m1);
k=input('deger giriniz: ');
for i=1:satir
    for j=1:sutun
        if(m1(i,j) >= k);
            m2(i,j)=255;
        else
            m2(i,j)=0;
        end;
    end;
end;
figure,imshow(m2);

%Kýsa Kod ile Treshold

m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test1.jpg');
figure,imshow(m1);
m2=(m1>=128);
figure,imshow(m2);


          