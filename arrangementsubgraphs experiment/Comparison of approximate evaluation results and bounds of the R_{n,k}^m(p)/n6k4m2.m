%%
n=6;k=4;m=2;
load('E:\Datasets\data642.mat')
%%
P=(0.444:(1-0.444)/59:1);
Iter=length(P);
upBound=newnchoosek(k,m)*newperms(n,m)*P.^(newperms(n-m,k-m));
lowBound=[];
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
upBound(find(upBound<0))=0;
upBound(find(upBound>1))=1;
lowBound(find(lowBound<0))=0;
%%
simu=data(486:(end-486)/59:end,5)';
%%
figure
plot(P,upBound','-','LineWidth',1.2)
hold on;
plot(P,simu,'r-.','LineWidth',1.2)
plot(P, lowBound','g--','LineWidth',1.2)
legend('Upper Bound','approximate evaluation','Lower Bound','Location','northwest')
xlabel('Node reliability','FontSize',10);
ylabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks','FontSize',10);
axis([0.444 1 0 1]);
set(gca,'XTick',(0.444:(1-0.444)/6:1)*10000/10000);
suptitle('Selected parameters:n=6,k=4,m=2')