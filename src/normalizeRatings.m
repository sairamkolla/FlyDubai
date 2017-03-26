function [Ynorm, Ymean] = normalizeRatings(Y, R)
%NORMALIZERATINGS Preprocess data by subtracting mean rating for every 
%passenger (every row)
%   [Ynorm, Ymean] = NORMALIZERATINGS(Y, R) normalized Y so that each passenger
%   has a rating of 0 on average, and returns the mean rating in Ymean.
%

[m, n] = size(Y);
Ymean = zeros(m, 1);
Ynorm = zeros(size(Y));
for i = 1:m
    idx = find(R(i, :) == 1);
    Ymean(i) = mean(Y(i, idx));
    Ynorm(i, idx) = Y(i, idx) - Ymean(i);
end

end
