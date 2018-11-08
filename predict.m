function id = predict(X, theta)
  
  m = size(X)(1);
  X = [ones(m,1),X];

  tmp = sigmoid(X*theta');
  
  [p, id] = max(tmp');
  
  id = id';
  
endfunction
