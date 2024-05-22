load('E:\Datasets\dataAll.mat')
RMSES=[];
TIMES=[];
for i=1:10
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
    P_train=trainSet;
    T_train=trainFlag;
    N = size(testSet,2);
    net = newff(P_train,T_train,50);  
    net.trainParam.lr = 0.1; 
    net.trainParam.epochs = 1000;
    net.trainParam.goal = 1e-6;
    net.trainParam.showWindow=false;
    net.trainParam.showCommandLine=false;
    tic
    net = train(net,P_train,T_train);
    trainTime=toc;
    
    T_sim = sim(net,testSet);
    RMSE=sqrt(sum((T_sim-testFlag).^2)/N);
    RMSES=[RMSES RMSE];
    TIMES=[TIMES trainTime];
    save(num2str(i),'net','testSet','testFlag')
end
save nAllRMSES1000 RMSES
mean(RMSES)