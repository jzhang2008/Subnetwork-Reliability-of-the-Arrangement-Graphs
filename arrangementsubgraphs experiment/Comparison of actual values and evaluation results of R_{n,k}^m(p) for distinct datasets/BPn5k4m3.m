load('E:\Datasets\dataAll.mat')
%543
dataSet543=data543(:,1:4);
flag543=data543(:,5);
temp = randperm(length(flag543));
prePos=floor(length(flag543)*0.8);
trainSet = dataSet543(temp(1:prePos),:)';
trainFlag = flag543(temp(1:prePos))';
testSet = dataSet543(temp(prePos+1:end),:)';
testFlag = flag543(temp(prePos+1:end))';

%543   
pre=testSet(:,find(testSet(4,:)<0.021));
preTag=testFlag(:,find(testSet(4,:)<0.021));
preTemp=randperm(length(pre));
pre=pre(:,preTemp(1:3));
preTag=preTag(:,preTemp(1:3));
post=testSet(:,find(testSet(4,:)>0.021));
postTag=testFlag(:,find(testSet(4,:)>0.021));
postTemp=randperm(length(post));
post=post(:,postTemp(1:27)); 
postTag=postTag(:,postTemp(1:27)); 
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
% net.trainParam.showWindow=false;
% net.trainParam.showCommandLine=false;
net = train(net,P_train,T_train);
T_sim = sim(net,testSet);
RMSE=sqrt(sum((T_sim-testFlag).^2)/N);
%%
T_sim = sim(net,a);
RMSE2=sqrt(sum((T_sim-b).^2)/length(b));
T_sim(find(T_sim<0))=0;
T_sim(find(T_sim>1))=1;
T_sim543=T_sim;
b543=b;
save('bp543','net','a','b','b543','T_sim543');
