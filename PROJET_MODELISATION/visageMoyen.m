function moy=visageMoyen()
   img=["./Visages/ztest" num2str(1) ".gif"];
   I=imread(img);
   som=double(I);
  for i=2:53
    img=["./Visages/ztest" num2str(i) ".gif"];
    I=imread(img);
    I=double(I);
    som=som+I;  
  end
  moy=som/53;     
 endfunction