% m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2022/04/kutular1.jpg')
% subplot(331), imshow(m1);
% k=m1(:,:,3);
% subplot(332), imshow(k);
% k2=rgb2gray(m1); % rgb den griye dönüþüm
% subplot(333), imshow(k2);
% k3=imsubtract(k,k2);
% subplot(334),imshow(k3);
% k4=(k3>=50) % 50 eþik deðerinden fazla olanlarý almak için
% subplot(335),imshow(k4);
% k5=bwareaopen(k4,1000); % binary modda küçük parçalarý(baðlý olmayan) yok eder. aþýndýrma iþleminin benzeridir.
% subplot(335),imshow(k5);

% MAVÝ KUTU BULMA FOR ÝLE
m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2022/04/kutular2-300x150.jpg');
subplot(221),imshow(m1);
[satir sutun boyut]=size(m1);
m2=uint8(zeros(satir,sutun,boyut));
for i=1:satir
    for j=1:sutun
        if(m1(i,j,1)>=130 && m1(i,j,2)>=130 &&(120>=m1(i,j,3) && m1(i,j,3)>=20))
            m2(i,j,:)=m1(i,j,:);
        end
    end
end
m3=im2bw(m2); m4=bwareaopen(m3,1000);
subplot(222),imshow(m2);
subplot(223),imshow(m3);
subplot(224),imshow(m4);