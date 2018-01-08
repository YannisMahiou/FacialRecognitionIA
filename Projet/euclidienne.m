function euclidienne(moy, M)
  global IMAGE;
  global nbImg;
  
  IMAGE=abs(IMAGE-moy);
  tab=tableDistanceEuclidienne(IMAGE, M);
  [tab,ind]=sort(tab);
  p=uipanel('title','Resultats','position', [0 0 1 .5]);
  for i=1:nbImg
      img=["./Visages/ztest" num2str(ind(i)) ".gif"];
      R=imread(img);
      subplot(1,nbImg,i,'Parent', p);  
      imshow(R);
  end
endfunction