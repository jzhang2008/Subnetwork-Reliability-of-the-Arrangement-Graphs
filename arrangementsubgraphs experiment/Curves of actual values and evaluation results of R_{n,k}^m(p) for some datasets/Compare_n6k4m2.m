%%
n=6;k=4;m=2;
contrastTest=[ones(60,1)*6 ones(60,1)*4 ones(60,1)*2 (0.444:(1-0.444)/59:1)']';
load('E:\Datasets\data642.mat')
dataSet=data(:,1:4);
flag=data(:,5);
temp = randperm(length(flag));
prePos=floor(length(flag)*0.8);
P_train = dataSet(temp(1:prePos),:)';
T_train = flag(temp(1:prePos))';
net = newff(P_train,T_train,50);
net.trainParam.lr =0.1;
net.trainParam.epochs = 1000;
net.trainParam.goal = 1e-6;
net.trainParam.showWindow=false;
net.trainParam.showCommandLine=false;
net = train(net,P_train,T_train);
T_sim = sim(net,contrastTest);

%%
simu=data(486:(end-486)/59:end,5)';
%%
figure
plot(P,simu,'r--','LineWidth',1.2)
hold on;
plot(P,T_sim,'b-.','LineWidth',1.2)
legend('actual value','predictive value','Location','northwest')
xlabel('Node reliability','FontSize',10);
ylabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks','FontSize',10);
axis([0.444 1 0 1]);
set(gca,'XTick',(0.444:(1-0.444)/6:1)*10000/10000);
suptitle('Selected parameters:n=6,k=4,m=2')