m1=imread('http://blog.aku.edu.tr/ismailkoyuncu/files/2021/03/test1.jpg');
siyahbeyaz=im2bw(m1);
siyahbeyaz1=im2bw(m1,0.25);
siyahbeyaz2=im2bw(m1,0.75);
figure,imshow(siyahbeyaz);
figure,imshow(siyahbeyaz1);
figure,imshow(siyahbeyaz2);