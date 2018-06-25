function y = Shrink(z, t)
    r = 1-t/(norm(z,2));
    y = max(r,0)*z;
end
