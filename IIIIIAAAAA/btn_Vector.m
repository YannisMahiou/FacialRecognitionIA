# Fonction qui affiche les images les plus ressemblantes a l'image à tester en comparaison par histagramme
function btn_Vector(av,M)
  global IMG;
  if (size(IMG) != 0)
    # récupère le vecteur du visage moyen, puis les vecteurs de la base de donnée, puis les plus proches puis les affichent
    affichagePlusProches(getPlusProches(searchVector(I2Vector(av),getVectorWithAvg(IMG, av),M)),M);
    # Mise à jour de l'historiques des images testées
    majLastFaces();
  end
end