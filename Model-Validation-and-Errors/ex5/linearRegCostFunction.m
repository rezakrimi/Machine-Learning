function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


summation = X * theta;
summation = summation - y;
summation = summation .* summation;

regTerm = 0;

if size(theta,1) >= 2
    regTerm = lambda / 2 / m * (theta(2:end) .* theta(2:end));
end

J = sum(summation) / 2 / m + sum(regTerm);



grad(1,1) = sum((X * theta - y) .* X(:, 1)) / m;

for i=2: size(grad,1)
    gradSum = X*theta-y;
    gradSum = gradSum .* X(:,i);
    grad(i,1) = (sum(gradSum)/m) + (lambda/m*theta(i,1));

end



% =========================================================================

grad = grad(:);

end
