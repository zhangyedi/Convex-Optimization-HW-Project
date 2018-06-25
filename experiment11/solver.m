function [cost1,risk1,cost2,risk2,cost3,risk3] = solver(A,true_x,b,sigma)
    [m,d] = size(A);
    x_inf_norm = 1;
    mu_p = 0.10;
    delta_p = delta_upper(0.05,x_inf_norm,mu_p);
    m_p = delta_p+sqrt(d);
    epislon = sigma * ((m-delta_p)^0.5) ;
    
    best_mu_table1 = 0.1; % mu always be 0.1 
    %d=400; 
    best_mu_table2 = [0.10,0.21,0.31,0.42,0.53,0.64,0.75,0.87,0.99,1.11,1.23,1.36,1.50,1.64,1.79,1.94,2.10,2.27,2.45,2.64,2.84,3.06,3.29,3.54,3.82,4.11,4.45,4.81,5.23]; 
    best_mu_table3 = [0.10,0.12,0.14,0.17,0.20,0.23,0.25,0.28,0.30,0.32,0.34,0.36,0.38,0.40,0.42,0.44,0.46,0.47,0.49,0.50,0.52,0.53,0.55,0.56,0.57,0.59,0.60,0.61,0.62]; 
    %d=4000;
    %best_mu_table2 = [0.11,0.27,0.39,0.51,0.64,0.77,0.90,1.04,1.33,1.48,1.64,1.81,1.99,2.17,2.37,2.58,2.81,3.06,3.33,3.61,3.94,4.30,4.70,5.16,5.17,6.34,7.14,8.13,9.49]; 
    %best_mu_table3 = [0.11,0.16,0.20,0.25,0.29,0.33,0.37,0.40,0.44,0.48,0.51,0.54,0.57,0.60,0.62,0.65,0.67,0.70,0.72,0.75,0.77,0.79,0.81,0.83,0.85,0.87,0.89,0.91,0.93]; 
      
    % for scheme-1
    [cost1,risk1] = Auslender_Teboulle(A,true_x,b,mu_p,epislon);
    
    %for scheme-2    
    index = (m-10)/10 + 1;
    mu2 = best_mu_table2(index);
    delta2 = delta_p*m/m_p;
    delta2 = delta_upper(0.05,x_inf_norm,mu2);
    epislon2 = sigma * ((m-delta2)^0.5)       
    [cost2 , risk2] = Auslender_Teboulle(A,true_x,b,mu2,epislon2);
    
    %for scheme-3     
    mu3 = best_mu_table3(index);
    delta3 = delta_p*m/(m_p+(m-m_p)^0.9);
    epislon3 = sigma * ((m-delta3)^0.5);
    [cost3, risk3] = Auslender_Teboulle(A,true_x,b,mu3,epislon3);

end

