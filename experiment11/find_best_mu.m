function mu_best_table = find_best_mu(delta_p,type,m,i,step)

%mu_best_table = zeros(1,15);

%for i=100:20:380
    mu = 0;
    if (type==2)
        m_alpha = m;
    else
        m_alpha = m+(i-m)^0.9;
    end
    delta = delta_p * i / m_alpha;
    while(delta>delta_p)
        mu = mu + step
        delta_p = delta_upper(0.05,1,mu);
    end
    %mu_best_table((i-80)/20) = mu;
    mu_best_table = mu;
%end

%     mu = 0.4;
%     if (type==2)
%         m_alpha = m;
%     else
%         m_alpha = m+(i-m)^0.9;
%     end
%     
%     delta = delta_p * i / m_alpha
%     while((delta - delta_p)>0)
%         mu = mu + step;
%         delta_p = delta_upper(0.05,1,mu)
%     end
%     mu_best_table = mu

end

