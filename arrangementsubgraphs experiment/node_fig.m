%Node
load('E:\rmses541.mat')
load('E:\rmses542.mat')
load('E:\rmses543.mat')
load('E:\rmses641.mat')
load('E:\rmses642.mat')
load('E:\rmses643.mat')
load('E:\rmses651.mat')
load('E:\rmses652.mat')
load('E:\rmses653.mat')
load('E:\rmses751.mat')
load('E:\rmses752.mat')
load('E:\rmses753.mat')
load('E:\rmsesall.mat')
%%
plot(5:5:150,mean(rmses541,2)',':*','LineWidth',0.25);
hold on;
plot(5:5:150,mean(rmses542,2)','-h','LineWidth',0.25);
plot(5:5:150,mean(rmses543,2)','-c','LineWidth',0.25);
plot(5:5:150,mean(rmses641,2)','-d','LineWidth',0.25);
plot(5:5:150,mean(rmses642,2)','-x','LineWidth',0.25);
plot(5:5:150,mean(rmses643,2)','-h','LineWidth',0.25);
plot(5:5:150,mean(rmsesall,2)','-h','LineWidth',2);
plot(5:5:150,mean(rmses651,2)',':+','LineWidth',0.25);
plot(5:5:150,mean(rmses652,2)','-o','LineWidth',0.25);
plot(5:5:150,mean(rmses653,2)','-h','LineWidth',0.25);
plot(5:5:150,mean(rmses751,2)','-h','LineWidth',0.25);
plot(5:5:150,mean(rmses752,2)','-h','LineWidth',0.25);
plot(5:5:150,mean(rmses753,2)','-h','LineWidth',0.25);

hleg=legend('\itD\rm(\itA_5_,_4^1\rm)','\itD\rm(\itA_5_,_4^2\rm)','\itD\rm(\itA_5_,_4^3\rm)','\itD\rm(\itA_6_,_4^1\rm)','\itD\rm(\itA_6_,_4^2\rm)','\itD\rm(\itA_6_,_4^3\rm)','merged dataset','\itD\rm(\itA_6_,_5^1\rm)','\itD\rm(\itA_6_,_5^2\rm)','\itD\rm(\itA_6_,_5^3\rm)','\itD\rm(\itA_7_,_5^1\rm)','\itD\rm(\itA_7_,_5^2\rm)','\itD\rm(\itA_7_,_5^3\rm)');
set(hleg,'FontName','Times New Roman');
xlabel('Number of hidden layer nodes','FontSize',14);
ylabel('Root mean square error','FontSize',14);
axis([0 100 0 0.1]);

