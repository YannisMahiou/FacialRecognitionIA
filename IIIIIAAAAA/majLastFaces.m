# Fonction qui met à jour l'historique des visages comparés
function majLastFaces() 
  global IMG;
  global imgSave
  global nbSave;
  
  # Vérification si l'historique est vide ou si l'image testé est différente le la dernière
  if (nbSave == 0 || norm(I2Vector(double(IMG)) - imgSave(:, nbSave)) != 0)
    historique  = uipanel('title', 'Last faces', 'position', [.4 .50 .2 .50]);
    
    # Met à jour ne nombre d'image dans l'historique et ajoute l'image à l'historique
    if (nbSave == 5)
      imgSave(:, 1:4) = imgSave(:, 2:5);
    else
      nbSave = nbSave+1;
    end
    imgSave(:, nbSave) = I2Vector(double(IMG));
    
    # affiche les images dans la partie historique
    for i = 1:nbSave
      subplot(nbSave, 1, i, 'Parent', historique);
      imshow(uint8(Vector2I(imgSave(:, nbSave-i+1))));
    end
  end
end