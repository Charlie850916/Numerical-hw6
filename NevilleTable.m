function [y, T] = NevilleTable(x, ptx, pty)
    % given points set ptx and pty and x 
    % retrun the Neville's Table T and y = Pn(x)
    [~,n] = size(ptx);
    n = n-1;
    T = zeros(n+1, n+1);
    T(1:n+1,1) = pty(1,1:n+1);
    for j = 2 : n+1
        for i = 1 : n-j+2
            T(i,j) = ((x-ptx(i+j-1))*T(i,j-1)-(x-ptx(i))*T(i+1,j-1))/(ptx(i)-ptx(i+j-1));
        end
    end
    y = T(1, n+1);
end