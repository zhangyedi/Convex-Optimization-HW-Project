function mu = compute_mu(delta)
for i=0.01:0.01:0.9
    cvx_begin
        variable z
        minimize(norm(g-z,2)^2)
        subject to
            norm(z,1)+sum_square(z)<=20+10*mu
    cvx_end
end