function res=getrgb(I,bleu,vert,rouge)
[l, c, can] = size(I)

res=uint8(zeros(l,c,3));

res(:,:,1)=I(:,:,rouge);
res(:,:,2)=I(:,:,vert);
res(:,:,3)=I(:,:,bleu);

figure
imshow(res);
end
