function Pb=algorithm1(n,k,m,Num,P)
    nodeNums=factorial(n)/factorial(n-k);
    mid=nchoosek((1:n),k);
    nodePerms=[];
    for i=1:size(mid,1)
        nodePerms=[nodePerms ; perms(mid(i,:))];
    end
    Iter=length(P);
    Pb=zeros(1,Iter);
    b=nchoosek((1:k),m);
    Sum=0;
    select_val=[];
    e = [];
    for l=1:size(b,1)
        for j = 1: size(nodePerms,1)
            e(end+1, :) = [b(l,:), nodePerms(j,:)];
        end
    end                                    
    [me, ne] = size(e);
    for o = 1:me
        A = e(o, 1:m);
        B = [1:k];
        C = setdiff(B, A) ;                
        for ic = 1:length(C)
            e(o, m + C(ic)) = -1;
        end
    end
    e1 = e(:,m+1:end);
    e2 = unique(e1, 'row' ,'stable');    
    for i=1:Iter
        for h=1:Num
            num=rand(1,nodeNums);
            f=find(num<(1-P(i)));
            select_val=f;
            if isempty(select_val)
                c=[];
            else
                c=nodePerms(select_val,:);    
            end
            d = [];
            for r=1:size(b,1)
                for j = 1: size(c,1)
                    d(end+1, :) = [b(r,:), c(j,:)];
                end
            end                           

            [md, nd] = size(d);
            for p = 1:md
                A = d(p, 1:m);
                B = [1:k];
                C = setdiff(B, A) ;                 
                for ic = 1:length(C)
                    d(p, m + C(ic)) = -1;
                end
            end
            d1 = d(:,m+1:end);
            d2 = unique(d1, 'row' ,'stable') ;    
          
            [md2, nd2] = size(d2);
            [me2, ne2] = size(e2);
            trans=e2;
            Ps =(length(trans)>length(d2));
            Sum=Sum+Ps;
            trans=[];
        end
        Pb(i)       =Sum/Num;
        Sum=0;
    end
end
