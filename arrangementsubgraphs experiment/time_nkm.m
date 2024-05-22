
%%
tic
    n=5;  %nkm
    k=4;
    m=1;
    acc=calAcc(n,k,m);
    contrast=[];
    for i=acc:(1-acc)/299:1
        contrast=[contrast;n k m i algorithm1(n,k,m,16588,i)];
    end
simuTime=toc;
%%
%bp
tic
data=algorithm2(5,4,1,100,0.01,0.99);
dataSet=data(:,1:4);
flag=data(:,5);
P_train = dataSet';
T_train = flag';
net = newff(P_train,T_train,50);
net.trainParam.lr = 0.1;
net.trainParam.goal = 1e-6;
net.trainParam.epochs = 1000;
net.trainParam.showWindow=false;
net.trainParam.showCommandLine=false;
net = train(net,P_train,T_train);
T_sim = sim(net,contrast(:,1:4)');
annTime=toc;
%%
RMSE=sqrt(sum((T_sim-contrast(:,5)').^2)/length(T_sim));
decrease=(simuTime-annTime)/simuTime;
save('time541.mat','annTime','simuTime','RMSE','decrease');