function [minTheta] = oneVsAll(X, y, theta_init, lambda)
  
  m = size(theta_init)(1);
  tmp = zeros(m,3);
  options = optimset('GradObj', 'on', 'MaxIter', 100);
  for i = 1:3
    tmp(:,i) = fminunc(@(t)(costFunction(X,(y == i),t,lambda)), theta_init,options);
  endfor
  minTheta = tmp';
endfunction
