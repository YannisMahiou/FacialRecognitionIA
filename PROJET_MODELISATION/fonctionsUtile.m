function  V=I2Vector (I)
  [H,L]=size(I);
  V=reshape(I,[H*L,1]);
endfunction

function  I=Vector2I (V)
  H=length(V);
  n=sqrt(H);
  I = reshape(V, [n,n]);
endfunction

function J=RGB2Gray(I)
    [H,L,n]=size(I);
     if(n==3)
        J=round(0.3 * I(:, :,1) + 0.59 * I(:, :,2) + 0.11 * I(:, :,3));
     else
        J=I;
     end
endfunction

function remplaceEnGris()
  for i=1:54
   img=["test" num2str(i) ".gif"];
   I=imread(img);
   [H,L,n]=size(I);
     if(n==3)
      I=RGB2Gray(I);
     end
     imW=["ztest" num2str(i) ".gif"];
     imwrite(I,imW);
  end  
endfunction


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
  %meanface=mean(M,I)
  %diff=M-Vs
  
  moy=som/53;
          
 endfunction

function M=V2Matrice(chemin)
  M=zeros(128*128,54);
  moy = visageMoyen();
  for i=1:54
   img=[chemin num2str(i) ".gif"];
   I=imread(img);
   
   I=abs(I-moy);
   V=I2Vector(I);
   M(:,i)=V; 
  end  
endfunction
 
 
#Normalise une image I avec l'image moyenne IMoy
function img=normalizeImg(I, IMoy)
     I=RGB2Gray(I); 
     [N, M] = size(IMoy);
     img = reshape(I,[N, M]);
endfunction
 

#Distance euclidienne
 function dis=distance(I1, I2)
    V1=I2Vector(double(I1));
    V2=I2Vector(double(I2));
      dif=V1-V2;
      dis=norm(dif);
endfunction
 
#Créé un tableau de tableau de Distance Euclidienne
function tab=tableDistance(I,M)
      for i=1:M.size()
          J=Vector2I(M(:,i));
          tab(i)=distance(I,J);
        end
endfunction

# Distance de Bhattacharyya
function dis=distanceBhattacharyya(H1, H2)
      dis = -log(sum(sqrt(H1.*H2)));
 endfunction

function tab=tableDistance2(H1,M, ax)
      for i=1:54
          [nbElt, centreBin]=hist(M(:,i),ax);
          tab(i)=distanceBhattacharyya(H1,nbElt);
        end
endfunction




function affichageSubPlot(R)
  M=V2Matrice();
  ax=0:5:255;
  R2=R;
  moy=visageMoyen();
  R=abs(R-moy);
  R=I2Vector(R);
  [nbElt, centreBin] = hist(R,ax);
  
  tab=tableDistance2(nbElt,M,ax);
  [tab,ind]=sort(tab);
    
    
  R=Vector2I(R);
  figure();
  subplot(2,1,1);
  imshow(R2);
  for i=1:5
      img=["./Visages/ztest" num2str(ind(i)) ".gif"];
      R=imread(img);
      subplot(2,5,i+5);
      imshow(R);   
  end
endfunction