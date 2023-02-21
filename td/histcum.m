function matC  =histcum(I)
[m, n, can] = size(I)  % m=nb lignes, n=nb colonnes, 
if(can > 1)
    I =double( rgb2gray(I));    % si l’image est en couleur, la transformer en NG
end

mat = double(zeros (1,256));  
for rows=1:m
    for cols=1:n
        
        mat(1,I(rows,cols)+1) = mat(1,I(rows,cols)+1)+1;
    end
end
mat = double(mat/double(n*m));

matC =double(ones(1,256));
matC(1,1) = mat(1,1);
for z=2:256;
       
matC(z)=matC(z-1)+mat(z);
   
end