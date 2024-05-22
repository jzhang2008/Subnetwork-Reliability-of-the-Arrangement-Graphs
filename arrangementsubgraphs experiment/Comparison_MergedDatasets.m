%%
    load('E:\Datasets\dataAll.mat')
 %541
    dataSet541=data541(:,1:4);
    flag541=data541(:,5);
    temp = randperm(length(flag541));
    prePos=floor(length(flag541)*0.8);
    trainSet = dataSet541(temp(1:prePos),:)';
    trainFlag = flag541(temp(1:prePos))';
    testSet = dataSet541(temp(prePos+1:end),:)';
    testFlag = flag541(temp(prePos+1:end))';
 %542
    dataSet542=data542(:,1:4);
    flag542=data542(:,5);
    temp = randperm(length(flag542));
    prePos=floor(length(flag542)*0.8);
    trainSet = [trainSet dataSet542(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag542(temp(1:prePos))'];
    testSet = [testSet dataSet542(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag542(temp(prePos+1:end))'];
%543
    dataSet543=data543(:,1:4);
    flag543=data543(:,5);
    temp = randperm(length(flag543));
    prePos=floor(length(flag543)*0.8);
    trainSet = [trainSet dataSet543(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag543(temp(1:prePos))'];
    testSet = [testSet dataSet543(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag543(temp(prePos+1:end))'];
 %641 
    dataSet641=data641(:,1:4);
    flag641=data641(:,5);
    temp = randperm(length(flag641));
    prePos=floor(length(flag641)*0.8);
    trainSet = [trainSet dataSet641(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag641(temp(1:prePos))'];
    testSet = [testSet dataSet641(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag641(temp(prePos+1:end))'];
 %642   
    dataSet642=data642(:,1:4);
    flag642=data642(:,5);
    temp = randperm(length(flag642));
    prePos=floor(length(flag642)*0.8);
    trainSet = [trainSet dataSet642(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag642(temp(1:prePos))'];
    testSet = [testSet dataSet642(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag642(temp(prePos+1:end))'];
 %643   
    dataSet643=data643(:,1:4);
    flag643=data643(:,5);
    temp = randperm(length(flag643));
    prePos=floor(length(flag643)*0.8);
    trainSet = [trainSet dataSet643(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag643(temp(1:prePos))'];
    testSet = [testSet dataSet643(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag643(temp(prePos+1:end))'];
 %651   
    dataSet651=data651(:,1:4);
    flag651=data651(:,5);
    temp = randperm(length(flag651));
    prePos=floor(length(flag651)*0.8);
    trainSet = [trainSet dataSet651(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag651(temp(1:prePos))'];
    testSet = [testSet dataSet651(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag651(temp(prePos+1:end))'];
 %652   
    dataSet652=data652(:,1:4);
    flag652=data652(:,5);
    temp = randperm(length(flag652));
    prePos=floor(length(flag652)*0.8);
    trainSet = [trainSet dataSet652(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag652(temp(1:prePos))'];
    testSet = [testSet dataSet652(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag652(temp(prePos+1:end))'];
%653    
    dataSet653=data653(:,1:4);
    flag653=data653(:,5);
    temp = randperm(length(flag653));
    prePos=floor(length(flag653)*0.8);
    trainSet = [trainSet dataSet653(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag653(temp(1:prePos))'];
    testSet = [testSet dataSet653(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag653(temp(prePos+1:end))'];
 %751   
    dataSet751=data751(:,1:4);
    flag751=data751(:,5);
    temp = randperm(length(flag751));
    prePos=floor(length(flag751)*0.8);
    trainSet = [trainSet dataSet751(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag751(temp(1:prePos))'];
    testSet = [testSet dataSet751(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag751(temp(prePos+1:end))'];
%752    
    dataSet752=data752(:,1:4);
    flag752=data752(:,5);
    temp = randperm(length(flag752));
    prePos=floor(length(flag752)*0.8);
    trainSet = [trainSet dataSet752(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag752(temp(1:prePos))'];
    testSet = [testSet dataSet752(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag752(temp(prePos+1:end))'];
%753    
    dataSet753=data753(:,1:4);
    flag753=data753(:,5);
    temp = randperm(length(flag753));
    prePos=floor(length(flag753)*0.8);
    trainSet = [trainSet dataSet753(temp(1:prePos),:)'];
    trainFlag = [trainFlag flag753(temp(1:prePos))'];
    testSet = [testSet dataSet753(temp(prePos+1:end),:)'];
    testFlag = [testFlag flag753(temp(prePos+1:end))'];
%%
%%
% pre=testSet(:,find(testSet(4,:)<0.7980));
% preTag=testFlag(:,find(testSet(4,:)<0.7980));
% preTemp=randperm(length(pre));
% pre=pre(:,preTemp(1:10));
% preTag=preTag(:,preTemp(1:10));
% post=testSet(:,find(testSet(4,:)>0.7980));
% postTag=testFlag(:,find(testSet(4,:)>0.7980));
% postTemp=randperm(length(post));
% post=post(:,postTemp(1:20));
% postTag=postTag(:,postTemp(1:20));
% a=[pre post];
% figTemp=randperm(length(a));
% a=a(:,figTemp);
% b=[preTag postTag];
% b=b(figTemp);
%%
%541   %共选20个点 前10后10 或者前5后15
pre=testSet(:,find(testSet(4,:)<0.7980));
preTag=testFlag(:,find(testSet(4,:)<0.7980));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.7980));
postTag=testFlag(:,find(testSet(4,:)>0.7980));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15)); 
a=[pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[preTag postTag];
b=b(figTemp);

%542
pre=testSet(:,find(testSet(4,:)<0.307));
preTag=testFlag(:,find(testSet(4,:)<0.307));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.307));
postTag=testFlag(:,find(testSet(4,:)>0.307));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%543
pre=testSet(:,find(testSet(4,:)<0.021));
preTag=testFlag(:,find(testSet(4,:)<0.021));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.021));
postTag=testFlag(:,find(testSet(4,:)>0.021));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%641
pre=testSet(:,find(testSet(4,:)<0.913));
preTag=testFlag(:,find(testSet(4,:)<0.913));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.913));
postTag=testFlag(:,find(testSet(4,:)>0.913));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%642
pre=testSet(:,find(testSet(4,:)<0.543));
preTag=testFlag(:,find(testSet(4,:)<0.543));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.543));
postTag=testFlag(:,find(testSet(4,:)>0.543));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%643
pre=testSet(:,find(testSet(4,:)<0.065));
preTag=testFlag(:,find(testSet(4,:)<0.065));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.065));
postTag=testFlag(:,find(testSet(4,:)>0.065));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%651
pre=testSet(:,find(testSet(4,:)<0.954));
preTag=testFlag(:,find(testSet(4,:)<0.954));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.954));
postTag=testFlag(:,find(testSet(4,:)>0.954));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%652
pre=testSet(:,find(testSet(4,:)<0.721));
preTag=testFlag(:,find(testSet(4,:)<0.721));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.721));
postTag=testFlag(:,find(testSet(4,:)>0.721));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%653
pre=testSet(:,find(testSet(4,:)<0.217));
preTag=testFlag(:,find(testSet(4,:)<0.217));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.217));
postTag=testFlag(:,find(testSet(4,:)>0.217));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%751
pre=testSet(:,find(testSet(4,:)<0.985));
preTag=testFlag(:,find(testSet(4,:)<0.985));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.985));
postTag=testFlag(:,find(testSet(4,:)>0.985));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%752
pre=testSet(:,find(testSet(4,:)<0.874));
preTag=testFlag(:,find(testSet(4,:)<0.874));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.874));
postTag=testFlag(:,find(testSet(4,:)>0.874));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);

%753
pre=testSet(:,find(testSet(4,:)<0.448));
preTag=testFlag(:,find(testSet(4,:)<0.448));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.448));
postTag=testFlag(:,find(testSet(4,:)>0.448));
postTemp=randperm(length(post));
post=post(:,postTemp(1:15));
postTag=postTag(:,postTemp(1:15));
a=[a pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[b preTag postTag];
b=b(figTemp);
%%
P_train=trainSet;
T_train=trainFlag;
N = size(testSet,2);
net = newff(P_train,T_train,50);  
net.trainParam.lr = 0.1; 
net.trainParam.epochs = 1000;
net.trainParam.goal = 1e-6;  
net.trainParam.showWindow=false;
net.trainParam.showCommandLine=false;
net = train(net,P_train,T_train);
T_sim = sim(net,testSet);
RMSE=sqrt(sum((T_sim-testFlag).^2)/N);
%%
T_sim = sim(net,a);
RMSE2=sqrt(sum((T_sim-b).^2)/length(b));
T_sim(find(T_sim<0))=0;
T_sim(find(T_sim>1))=1;
figure
plot([1:240],b,'b*',[1:240],T_sim,'ro','LineWidth',0.25)  
legend('actual value','predictive value','Location','northwest')
xlabel('Sample number','FontSize',16);
ylabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks','FontSize',16);
ylim([0 1])

save('nAllFigNet','net','a','b')
