function y = soft(x, tau)
%SOFT soft-thresholding operator
%
% y = SOFT(x, tau) returns the solution of problem
%   
%        arg min_z 0.5||z-x||_2^2 + tau||z||_1
%
% input:
%       x       a vector in above formulation
%       tau     parameter, a scalar
%
% output:
%       y       solution, a vector
%
% Kejun Tang
% Last modified 03/10/2018


y = sign(x) .* max(abs(x)-tau, 0);