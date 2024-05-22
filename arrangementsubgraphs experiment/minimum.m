
syms x;   
con=0.99;  
acc=0.01;  
pd = makedist('Normal',0,1);   
answer=[];
for p=0:0.01:0.99      
    eq=cdf(pd,acc*x/(sqrt(x*p*(1-p))))-cdf(pd,-1*acc*x/(sqrt(x*p*(1-p))))==con;   
    test=vpasolve(eq,x);       
                               
    answer=[answer double(test)];
end
plot(0.01:0.01:0.99,answer','b:*')
xlabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks')
ylabel('Number of simulations')
maxNum=ceil(max(answer));
