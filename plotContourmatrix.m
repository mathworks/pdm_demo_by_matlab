function plotContourmatrix(C, color)
% Copyright 2017 The MathWorks, Inc.

hold on;

kk = 1;
while kk<=length(C)
    cnt = C(2,kk);
    patch(C(1,kk+(1:cnt)),C(2,kk+(1:cnt)),color,'EdgeColor','none');
    kk = kk+cnt+1;
end

hold off;

end

