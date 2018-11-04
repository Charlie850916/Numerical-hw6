function [a, T] = NewtonForm(ptx, pty)
    % T is the divided difference of interpolation at ptx and pty
    % a is the coef of Newton form ptx and pty
    [~,n] = size(ptx);
    n = n-1;
    T = zeros(n+1, n+1);
    T(1:n+1,1) = pty(1,1:n+1);
    for j = 2 : n+1
        for i = 1 : n-j+2
            T(i,j) = (T(i+1,j-1)-T(i,j-1))/(ptx(i+j-1)-ptx(i));
        end
    end
    a = zeros(1,n+1);
    a(1,1:n+1) = T(1,1:n+1);
end