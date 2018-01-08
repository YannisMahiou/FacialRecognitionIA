# Fonction qui affiche les images les plus proches
function affichagePlusProches(idx,M)
  # Récupération du nombre d'images voulues par l'utilisateur
  global nbImg;
  p=uipanel('title','Resultats', 'position',[0 0 1 .5]);
  for i=1:nbImg
    subplot(1, nbImg, i, 'Parent', p);
    imshow(uint8(Vector2I(M(:,idx(i)))));
  end
end