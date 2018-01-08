# Retourne une matrice qui contient toutes les images de la base de données
function M = creerBD()
	M=zeros(16384,49);
  # Parcours les images de la base de donnée et les transforment en vecteur pour les stockers dans M
  for i=1:49
    M(:,i)=I2Vector(double(imread(strcat("Visages/ztest",strcat(int2str(i),".gif")))));
  end
end