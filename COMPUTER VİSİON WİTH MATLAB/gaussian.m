% m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test3-300x227.jpg');
% subplot(321),imshow(m1);
% m2=rgb2gray(m1);
% subplot(322),imshow(m2);
% m3=imnoise(m2,'gaussian');
% subplot(323),imshow(m3);
% m4=imnoise(m3,'gauss');
% subplot(324),imshow(m4);
% m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test3-300x227.jpg');
% subplot(321),imshow(m1);
% m2=imnoise(m1,'salt & pepper');
% subplot(322),imshow(m2);
% m3=rgb2gray(m1);
% subplot(323),imshow(m3);
% m4=imnoise(m3,'gauss');
% subplot(324),imshow(m4);
% m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test3-300x227.jpg');
% subplot(221),imshow(m1);
% m2=imnoise(m1,'speckle');
% subplot(222),imshow(m2);
% m3=rgb2gray(m2);
% subplot(223),imshow(m3);
% m4=imnoise(m3,'gauss');
% subplot(224),imshow(m4);
% m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test3-300x227.jpg');
% m2 = im2double(rgb2gray(m1)); % görüntüyü içi içe parantezde ilk olarak griye çevirdik ardýndan double türüne çevirdik. artýk resim 1 ve 0 piksel deðerlerine sahip.
% subplot(222), imshow(m1);
% subplot(221), imshow(m2);
% m3 = 1-m2; % double türünde karþýtlýk verdik.
% subplot(223), imshow(m3);
m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test1.jpg');
subplot(221),imshow(m1);title('a');
subplot(223);
imhist(m1);
title('c');
m3=histeq(m1,100);
subplot(222),imshow(m3);title('b');
subplot(224)
imhist(m3);
title('c');

