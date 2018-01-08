function tab=tableDistanceChi2(H1,M, ax)
      for i=1:54
          [nbElt, centreBin]=hist(M(:,i),ax);
          tab(i)=distanceChi2(H1,nbElt);
        end
endfunction