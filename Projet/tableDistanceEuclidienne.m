#Retourne un tableau de Distance Euclidienne
function tab=tableDistanceEuclidienne(I,M)
      for i=1:54
          J=Vector2I(M(:,i));
          tab(i)=distanceEuclidienne(I,J);
        end
endfunction
