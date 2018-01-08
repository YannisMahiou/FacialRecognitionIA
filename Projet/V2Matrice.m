#Cette méthode transforme les images de la base en vecteur, et les assemble 
#pour former une matrice M
function M=V2Matrice()
  M=zeros(128*128,54);
  moy = visageMoyen();
  for i=1:54
   img=["./Visages/ztest" num2str(i) ".gif"];
   I=imread(img);
   I=abs(I-moy);
   V=I2Vector(I);
   M(:,i)=V; 
  end  
endfunction