function data=algorithm2(n,k,m,count,acc,con)
%  n=5;
%  k=4;
%  m=1;
%  count=500;
%  acc=0.01;
%  con=0.99;
 
    syms x;
    pd = makedist('Normal',0,1);
    p=0.5;
    eq=cdf(pd,acc*x/(sqrt(x*p*(1-p))))-cdf(pd,-1*acc*x/(sqrt(x*p*(1-p))))==con;   %ŒÛ≤Ó0.01  ÷√–≈∂»99%
    test=vpasolve(eq,x);
    maxNum=double(test);     
    data=[];
    acc=calAcc(n,k,m);
    inter=(1-acc)/count;
    length=1/inter;
    amountsBefore=acc/inter;
    for j=1:length
        if j<=amountsBefore
            Rctmp=fo(n,k,m,j*inter);
            data=[data;n k m j*inter Rctmp];
        else
            Pb=algorithm1(n,k,m,maxNum,j*inter);
            data=[data;n k m j*inter Pb];
        end
    end  
%     save data541 data;
end
