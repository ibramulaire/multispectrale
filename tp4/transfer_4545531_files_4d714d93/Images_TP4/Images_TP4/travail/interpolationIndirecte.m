function res = interpolationIndirecte(I,b)
  
  Q= computQ(I,b);
  
  [l, c, can] = size(I);
  [lb, cb] = size(b);
  res=zeros(l,c,cb);
  for rows=1:l
    for cols=1:c
  res(rows,cols,:)=  v=double(reshape(I(rows,cols,:),[1,7]))*Q;
    end
  end
 end