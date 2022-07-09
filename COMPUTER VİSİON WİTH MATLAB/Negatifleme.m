% m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test1.jpg');
% figure,imshow(m1);
% [satir sutun]=size(m1);
% for i=1:satir
%     for j=1:sutun
%         if(m1(i,j)>=128)
%             m2(i,j)=0;
%         else
%             m2(i,j)=255;
%         end
%     end
% end
% figure , imshow(m2);

% Klavyeden giriline Negatifleme
m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test1.jpg');
subplot(121),imshow(m1);
[satir sutun]=size(m1);
k=input('deger giriniz');
for i=1:satir
    for j=1:sutun
        if(m1(i,j)>=k)
            m2(i,j)=0;
        else
            m2(i,j)=255;
        end
    end
end
subplot(122),imshow(m2); 
