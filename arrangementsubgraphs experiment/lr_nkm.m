%%
load('E:\Datasets\dataAll.mat')
data=[data541;data542;data543;data641;data642;data643;data651;data652;data653;data751;data752;data753];

dataSet=data(:,1:4);
flag=data(:,5);
times=[];
RMSES=[];
timeAll=[];
for i=0.01:0.01:0.2
    for j=1:5
        temp = randperm(length(flag));
        prePos=floor(length(flag)*0.8);
        trainSet = dataSet(temp(1:prePos),:)';
        trainFlag = flag(temp(1:prePos))';
        testSet = dataSet(temp(prePos+1:end),:)';
        testFlag = flag(temp(prePos+1:end))';

        P_train=trainSet;
        T_train=trainFlag;
        N = size(testSet,2);
        net = newff(P_train,T_train,50); 
        net.trainParam.lr =i; 
        net.trainParam.epochs = 1000;  
        net.trainParam.goal = 1e-6;   

        tic;
        net = train(net,P_train,T_train);
        answer=toc;
        
        times=[times answer];
        T_sim = sim(net,testSet);
        RMSE=sqrt(sum((T_sim-testFlag).^2)/N);
        RMSES=[RMSES RMSE];
    end
    times=mean(times);
    timeAll=[timeAll;times];
    times=[];
end
% lr541=[];
lrAll=timeAll.';
save lrAll lrAll
 