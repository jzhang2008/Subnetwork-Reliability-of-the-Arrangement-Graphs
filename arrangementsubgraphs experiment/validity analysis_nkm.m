
%nkm
    P=0:0.001:1;
    upBound=newnchoosek(k,m)*newperms(n,m)*P.^(newperms(n-m,k-m));
    lowBound=[];
    Iter=length(P);
    for j=1:Iter
        var=0;
        for i=0:m-1
            var=var+(newnchoosek(k,i)*newnchoosek(k-i,m-i)*newnchoosek(k-m,m-i)* ...
                (newperms(n,i)*newperms(n-i,m-i)*newperms(n-m,m-i)) ...
                )/2*P(j)^(2*newperms(n-m,k-m)-newperms(n-(2*m-i),k-(2*m-i)));
        end
        for l=0:m
            var=var+(newnchoosek(k,l)*newnchoosek(k-l,m-l)*newnchoosek(k-m,m-l)* ...
                ((newperms(n,m))^2-(newperms(n,l)*newperms(n-l,m-l))*(newperms(n-m,m-l))) ...
                )/2*P(j)^(2*newperms(n-m,k-m));
        end
        
        lowBound=[lowBound var];
    end
    lowBound=upBound-lowBound;
    %%
    acc1=max(find((lowBound)>=0))/1000; 
    acc2=max(find((upBound)<=1))/1000;  
    
     upBound(find(upBound<0))=0;
     upBound(find(upBound>1))=1;
     lowBound(find(lowBound<0))=0;

    acc=min(find((upBound-lowBound)>0.01))/1000;  

