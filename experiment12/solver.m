function [cost1,risk1,cost2,risk2,cost3,risk3] = solver(A,true_X,b,sigma)
    [m,d] = size(A);
    mu_p = 0.1;
    delta_p = delta_upper(true_X,mu_p);
    m_p = delta_p+sqrt(d);
    epislon = sigma * ((m-delta_p)^0.5) ;
    
   
    %best_mu_table1 = 0.1;
    %20*20
    %best_mu_table2 = [0.14,0.26,0.38,0.50,0.63,0.75,0.87,1.00,1.13,1.25,1.39,1.53,1.67,1.82,1.97,2.13,2.29,2.47,2.65,2.85,3.06,3.28,3.51,3.77,4.05,4.35,4.68,5.06,5.47]; 
    %best_mu_table3 = [0.11,0.14,0.17,0.20,0.23,0.26,0.29,0.32,0.35,0.37,0.40,0.42,0.44,0.46,0.48,0.50,0.52,0.54,0.55,0.57,0.59,0.60,0.62,0.63,0.65,0.66,0.67,0.69,0.70];
    
    %40*40
    best_mu_table2 = [0.20,0.50,0.90,1.20,1.60,2.00,2.40,3.00,3.60,4.30,5.30,6.80];
    best_mu_table3 = [0.11,0.23,0.33,0.42,0.50,0.58,0.64,0.70,0.75,0.80,0.85,0.89];
    % for scheme-1
    [cost1,risk1] = Auslender_Teboulle(A,true_X,b,mu_p,epislon);
    
    %for scheme-2    
    index = (m-400)/100 + 1;
    mu2 = best_mu_table2(index);
    delta2 = delta_p*m/m_p;
    epislon2 = sigma * ((m-delta2)^0.5);   
    
    [cost2 , risk2] = Auslender_Teboulle(A,true_X,b,mu2,epislon2);
    
    %for scheme-3     
    mu3 = best_mu_table3(index);
    delta3 = delta_p*m/(m_p+(m-m_p)^0.9);
    epislon3 = sigma * ((m-delta3)^0.5);
    [cost3, risk3] = Auslender_Teboulle(A,true_X,b,mu3,epislon3);
 
%     cost2 = cost1;
%     risk2 = risk1;
%     cost3 = cost1;
%     risk3 = risk1;
end

