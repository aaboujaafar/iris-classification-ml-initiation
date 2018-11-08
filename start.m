%Autor : A.ABOUJAAFAR

%Loading training data
printf('Loading training data ...\n');
load iris.mat ;

X = iris(1:size(iris)(1),1:size(iris)(2)-1);
y = iris(1:size(iris)(1),size(iris)(2));

t = rand(5,1);
theta_init = ones(5,1);
lambda = 1;

%Displaying cost and grad
[cost, grad] = costFunction(X,y,theta_init,lambda)

display(cost);
display(grad);

%Calculation of min tetha
min_theta = oneVsAll(X,y,t,lambda);


%Loading test data
printf('Loading testing data ...\n');
load iris_training_set.mat;

Xt = iris_training(1:size(iris_training)(1),1:size(iris_training)(2)-1);
yt = iris_training(1:size(iris_training)(1),size(iris_training)(2));
%Predictions on testing data
predictions = predict(Xt,min_theta);
printf('Accuracy : %d%%\n', erreur(predictions,yt));
