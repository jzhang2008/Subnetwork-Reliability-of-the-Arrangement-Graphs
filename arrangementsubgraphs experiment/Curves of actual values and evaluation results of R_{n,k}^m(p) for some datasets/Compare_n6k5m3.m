%%
n=6;k=5;m=3;
contrastTest=[ones(100,1)*5 ones(100,1)*4 ones(100,1) (0.1440:(1-0.1440)/99:1)']'; 
load('E:\Datasets\data653.mat')
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
simu=data(92:(end-92)/99:end,5)'; 
%%
figure
plot(P,simu,'r--','LineWidth',1.2)
hold on;
plot(P,T_sim,'b-.','LineWidth',1.2)
legend('actual value','predictive value','Location','northwest')
xlabel('Node reliability','FontSize',10);
ylabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks','FontSize',10);
axis([0.144 0.8 0 1]); 
set(gca,'XTick',(0.1440:(0.8-0.1440)/6:1)*10000/10000);
suptitle('Selected parameters:n=6,k=5,m=3')