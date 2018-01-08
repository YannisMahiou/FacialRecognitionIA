function tab=tableDistanceBhattacharrya(H1,M, ax)
      for i=1:54
          [nbElt, centreBin]=hist(M(:,i),ax);
          tab(i)=distanceBhattacharyya(H1,nbElt);
        end
endfunction
