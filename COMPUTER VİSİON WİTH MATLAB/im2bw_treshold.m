m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test3-300x227.jpg');
subplot(321),imshow(m1);

gray =rgb2gray(m1)

subplot(322),imshow(gray);

m3=255-gray;

subplot(323),imshow(m3);

sb1=im2bw(m1)

subplot(324),imshow(sb1);

sb=im2bw(m3);

subplot(325),imshow(sb);

