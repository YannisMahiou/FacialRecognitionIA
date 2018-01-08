# Retourne un tableau des valeurs calculées avec les distances de bhattacharya
function d = searchHisto(H,av,M)
  for i =1:49
    d(i) = -log(sum(sqrt(H.*getHistoWithAvg(Vector2I(M(:,i)),av))));
  end
end