function mu_best = find_best_mu(delta_p,X,type,m,i,step)

mu = 0.85;

    if (type==2)
        m_alpha = m;
    else
        m_alpha = m+(i-m)^0.9;
    end
    delta = delta_p * i / m_alpha
    while(delta>delta_p)
        delta_p = delta_upper(X,mu)
        mu = mu + step
    end    
    mu_best = mu;


end

