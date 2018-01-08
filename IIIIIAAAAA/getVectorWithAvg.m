# Retourne un vecteur calculé avec la différence entre im et av
function V = getVectorWithAvg(im, av)
  V=I2Vector(double(im))-I2Vector(av);
end