# Distance de Bhattacharyya
function dis=distanceBhattacharyya(H1, H2)
      dis = -log(sum(sqrt(H1.*H2)));
 endfunction
