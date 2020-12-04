%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA109
% Project Title: Implementation of Shuffled Frog Leaping Algorithm (SFLA)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Shuffled Frog Leaping Algorithm in MATLAB (URL: https://yarpiz.com/71/ypea109-shuffled-frog-leaping-algorithm), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function L = RandSample(P, q, replacement)

    if ~exist('replacement', 'var')
        replacement = false;
    end

    L = zeros(q, 1);
    for i = 1:q
        L(i) = randsample(numel(P), 1, true, P);
        if ~replacement
            P(L(i)) = 0;
        end
    end

end