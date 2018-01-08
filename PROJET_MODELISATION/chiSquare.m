function chiSquare(moy,M)
  global IMAGE;
  global nbImg;
  
  M=V2Matrice();
  ax=0:5:255;
  IMAGE=abs(IMAGE-moy);
  IMAGE=I2Vector(IMAGE);
  [nbElt, centreBin] = hist(IMAGE,ax);
  
  tab=tableDistanceChi2(nbElt,M,ax);
  [tab,ind]=sort(tab);    
  IMAGE=Vector2I(IMAGE);
  p=uipanel('title','Resultats','position', [0 0 1 .5]);
   for i=1:nbImg
      img=["./Visages/ztest" num2str(ind(i)) ".gif"];
      R=imread(img);
      subplot(1,nbImg,i,'Parent', p);  
      imshow(R);
  end
endfunction