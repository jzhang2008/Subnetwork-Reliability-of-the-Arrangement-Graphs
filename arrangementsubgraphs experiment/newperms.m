function answer=newperms(n,k)
    if n>=k&&k>=0
        answer=nchoosek(n,k)*factorial(k);
    else
        answer=0;
    end
end

