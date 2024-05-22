function Rctmp=fo(n,k,m,P)
    %upper Bound
    upBound=newnchoosek(k,m)*newperms(n,m)*P.^(newperms(n-m,k-m));
    %lowBound
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
    lowBound=newnchoosek(k,m)*newperms(n,m)*P.^(newperms(n-m,k-m))-lowBound;
     if(upBound>1)
        upBound=1;
    end
    if(lowBound<0)
        lowBound=0;
    end
    Rctmp=(upBound+lowBound)/2;
end