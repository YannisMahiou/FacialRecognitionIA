# Retourne un histogramme du vecteur contenant la différence entre l'image à comparer et le visage moyen
function H = getHistoWithAvg(img, Iavg)
  V = I2Vector(img) - I2Vector(Iavg);
  [tImg cbImg] = hist(V(:),0:5:255);
  H = tImg/(128*128);
end