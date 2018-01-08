# Fonction qui affiche les images les plus ressemblantes a l'image à tester en comparaison par histagramme
function btn_Histo(av,M)
  global IMG;
  if (size(IMG) != 0)
    # récupère l'histogramme de l'image testé, puis les histogrammes de la base de donnée, puis les plus proches puis les affichent
    affichagePlusProches(getPlusProches(searchHisto(getHistoWithAvg(IMG,av),av,M)),M);
    # Mise à jour de l'historiques des images testées
    majLastFaces();
  end
end