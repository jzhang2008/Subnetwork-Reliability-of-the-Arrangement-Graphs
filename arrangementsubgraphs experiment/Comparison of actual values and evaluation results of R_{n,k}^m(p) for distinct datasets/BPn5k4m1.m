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

%541  
pre=testSet(:,find(testSet(4,:)<0.7980));
preTag=testFlag(:,find(testSet(4,:)<0.7980));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:5));
preTag=preTag(:,preTemp(1:5));
post=testSet(:,find(testSet(4,:)>0.7980));
postTag=testFlag(:,find(testSet(4,:)>0.7980));
postTemp=randperm(length(post));
post=post(:,postTemp(1:25)); 
postTag=postTag(:,postTemp(1:25));  
a=[pre post];
figTemp=randperm(length(a));
a=a(:,figTemp);
b=[preTag postTag];
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
T_sim541=T_sim;
b541=b;
save('bp541','net','a','b','b541','T_sim541');
