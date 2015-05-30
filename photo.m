clear; clc; close all;
img = imread('jump_small.jpg');
img_gray=rgb2gray(img);
s=size(img_gray);
columnLength = s(2);
rowLength = s(1);
% man = zeros(1173,2);
% currentManRow = 1;
color = zeros(1173,3);
currentColorRow = 1;

 for b=rowLength:rowLength+230
      for j=1:columnLength
         if(b<rowLength+225)
             img(b,j,1)=17;
             img(b,j,2)=10;
             img(b,j,3)=14;
         else
             img(b,j,1)=32;
             img(b,j,2)=82;
             img(b,j,3)=128;
         end
      end
 end
% 
% 
 for i=1:rowLength
     
     randomColorIndex = round(10340*rand)+1;     
     
     for j=1:columnLength

         color(currentColorRow,1)=img(i,j,1);
         color(currentColorRow,2)=img(i,j,2);
         color(currentColorRow,3)=img(i,j,3);
         currentColorRow = currentColorRow + 1;
         
         if(img_gray(i,j)<=60 && (i>40 && i<118) && (j>80 && j<200))
            img_gray(i,j)=255;
            img(i+100,j+60,1)= color(randomColorIndex,3);
            img(i+100,j+60,2)= color(randomColorIndex,2);
            img(i+100,j+60,3)= color(randomColorIndex,1);     
            img(i+200,j+30,1)= color(randomColorIndex,1);
            img(i+200,j+30,2)= color(randomColorIndex,2);
            img(i+200,j+30,3)= color(randomColorIndex,3);
                                   
                       
% %             man(currentManRow,1)=i;
% %             man(currentManRow,2)=j;
% %             currentManRow = currentManRow + 1;
         end
     end
 end

figure;
imshow(img_gray);
figure;
imshow(img);
