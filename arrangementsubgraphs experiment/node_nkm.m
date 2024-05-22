%nkm
load('E:\Datasets\data541.mat')
rmses=[];
for node=5:5:100 
    indices = crossvalind('Kfold',size(data,1),5);
    RMSES=[];
    for i=1:5
        test=(indices==i);
        train1=~test; 
        dataSet=data(:,1:4);
        flag=data(:,5);
        P_train = dataSet(train1,:)';
        T_train = flag(train1)';
        P_test = dataSet(test,:)';
        T_test = flag(test)';
        N = size(P_test,2);
        net = newff(P_train,T_train,node);
        net.trainParam.epochs = 1000;
        net.trainParam.lr = 0.1;
        net.trainParam.goal = 1e-6;
        net.trainParam.showWindow=false;
        net.trainParam.showCommandLine=false;
        net = train(net,P_train,T_train);
        T_sim = sim(net,P_test);
        RMSE=sqrt(sum((T_sim-T_test).^2)/N);
        RMSES=[RMSES RMSE];
        save([num2str(node),num2str(i)],'net','P_test','T_test')
    end
    save(num2str(node),'RMSES');
    mean(RMSES)
    rmses=[rmses;RMSES];
end
 rmses541=rmses;
 save rmses541 rmses541;  %rmses nkm