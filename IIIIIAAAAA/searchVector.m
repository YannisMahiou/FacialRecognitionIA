# Retourne un tableau des valeurs calculées avec les distances euclidiennes
function d = searchVector(Vavg,V,M)
  for i = 1:49
    d(i)=norm((M(:,i)-Vavg)-V);
  end
end