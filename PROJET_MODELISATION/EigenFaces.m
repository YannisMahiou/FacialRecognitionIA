function EigenFaces(M)
  global IMAGE;
  global nbImg;
  
  #Decomposition en valeurs singulières
  [u, s, v] = svd(uint32(M), 'econ');
  [H L] = size(M);
  VS = I2Vector(IMAGE);
  PS = (VS'*u(:,1))*u(:,1);
  for i=1:1:L
    VP = (M(:,i)'*u(:,1))*u(:,1);
    P(:,i) = VP;
    DM = distanceEuclidienne(PS, P(:,i));
    proche(i) = DM;
  endfor    
  [tab ind] = sort(proche);
  p=uipanel('title','Resultats','position', [0 0 1 .5]);
  for i=1:nbImg
      img=["./Visages/ztest" num2str(ind(i)) ".gif"];
      R=imread(img);
      subplot(1,nbImg,i,'Parent', p);  
      imshow(R);
  end
 endfunction
  