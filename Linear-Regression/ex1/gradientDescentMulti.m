function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

%     temp = X * theta;
%     temp = temp - y;
%     derivative = zeros(size(theta,1), 1);
%     
%     for i = 1:size(X,2)
%         derivative(i, 1) = temp' * X(:,i);
%     end
%     
%     theta = theta - (derivative * alpha / m);
%     
     
    summation = X * theta - y;
    for i = 1:size(theta,1)
        temp = summation .* X(:,i);
        theta(i) = theta(i) - ((alpha/m) * sum(temp))
    end










    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end