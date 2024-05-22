%%
load('E:\Datasets\data541.mat')
% load('E:\Datasets\data753.mat')
%%
RMSES=[];
%%
dataSet=data(:,1:4);
flag=data(:,5);
%%
for i=1:5
    temp = randperm(length(flag));
    prePos=floor(length(flag)*0.8);
    P_train = dataSet(temp(1:prePos),:)';
    T_train = flag(temp(1:prePos))';
    P_test = dataSet(temp(prePos+1:end),:)';
    T_test = flag(temp(prePos+1:end))';
    N = size(P_test,2);
    net = newff(P_train,T_train,50);
    net.trainParam.lr =0.1;
    net.trainParam.epochs = 1000;
    net.trainParam.goal = 1e-6;
    net.trainParam.showWindow=false;
    net.trainParam.showCommandLine=false;
    net = train(net,P_train,T_train);
    T_sim = sim(net,P_test);
    RMSE=sqrt(sum((T_sim-T_test).^2)/N);
    RMSES=[RMSES RMSE];
    save(num2str(i),'net','P_test','T_test')
end
save RMSE541 RMSES   %nkm
mean(RMSES)