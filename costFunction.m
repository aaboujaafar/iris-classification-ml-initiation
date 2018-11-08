function [J, grad] = costFunction(X, y, theta, lambda)
  
  m = size(X)(1);
  X = [ones(m,1),X];
  J=0;
  grad = zeros(1, size(theta)(1));
  
  J = -1*y.*log(sigmoid(X*theta)) - (ones(m,1) - y).*log(ones(m,1) - sigmoid(X*theta));

  J = (1/m)*sum(J) + (lambda/(2*m))*sum(theta.^2);
  
  grad = X' * (sigmoid(X*theta) - y) + (lambda/m)*sum(theta);
  grad = (1/m)*grad;  
  
endfunction