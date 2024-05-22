function answer=newnchoosek(n,k)
    if n>=k && k>=0
        answer=nchoosek(n,k);
    else
        answer=0;
    end
end