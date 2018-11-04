function res = CalNewtonForm(x, a, ptx)
    % calculate Newton Form of x with coef ai and point sets ptx
    % summation ai(x-x0)(x-x1)...(x-xi)
    [~,n] = size(ptx);
    n = n-1;
    res = a(n+1);
    for i = 1 : n
        k = n-i+1;
        res = res .* (x-ptx(k)) + a(k);
    end
end