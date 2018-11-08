function err = erreur(p,y)
  err = (sum([p==y]))/size(y)(1) * 100;
  
endfunction
