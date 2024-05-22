
%%
load('E:\lr541.mat')
load('E:\lr542.mat')
load('E:\lr543.mat')
load('E:\lr641.mat')
load('E:\lr642.mat')
load('E:\lr643.mat')
load('E:\lr651.mat')
load('E:\lr652.mat')
load('E:\lr653.mat')
load('E:\lr751.mat')
load('E:\lr752.mat')
load('E:\lr753.mat')
load('E:\lrAll.mat')
%%
plot((0.01:0.01:0.2),lr541*75,':*','LineWidth',0.25);
hold on;
plot((0.01:0.01:0.2),lr542*75,'-h','LineWidth',0.25);
plot((0.01:0.01:0.2),lr543*75,'-d','LineWidth',0.25);
plot((0.01:0.01:0.2),lr641*75,'-x','LineWidth',0.25);
plot((0.01:0.01:0.2),lr642*75,':+','LineWidth',0.25);
plot((0.01:0.01:0.2),lr643*75,'-o','LineWidth',0.25);
plot((0.01:0.01:0.2),(lrAll-15)*75/210+150,':x','LineWidth',2);
plot((0.01:0.01:0.2),lr651*75,'-p','LineWidth',0.25);
plot((0.01:0.01:0.2),lr652*75,'-h','LineWidth',0.25);
plot((0.01:0.01:0.2),lr653*75,'-.o','LineWidth',0.25);
plot((0.01:0.01:0.2),(lr751-1)/14*75+75,'-s','LineWidth',0.25);
plot((0.01:0.01:0.2),lr752*75,'-d','LineWidth',0.25);
plot((0.01:0.01:0.2),lr753*75,'-+','LineWidth',0.25);

hleg=legend('\itD\rm(\itA_5_,_4^1\rm)','\itD\rm(\itA_5_,_4^2\rm)','\itD\rm(\itA_5_,_4^3\rm)','\itD\rm(\itA_6_,_4^1\rm)','\itD\rm(\itA_6_,_4^2\rm)','\itD\rm(\itA_6_,_4^3\rm)','merged dataset','\itD\rm(\itA_6_,_5^1\rm)','\itD\rm(\itA_6_,_5^2\rm)','\itD\rm(\itA_6_,_5^3\rm)','\itD\rm(\itA_7_,_5^1\rm)','\itD\rm(\itA_7_,_5^2\rm)','\itD\rm(\itA_7_,_5^3\rm)');
set(hleg,'FontName','Times New Roman');
xlabel('Initial learning rate','FontSize',14);
ylabel('Average training time (unit=second)','FontSize',14);
axis([0 0.2 0 225]);
set(gca,'YTick',0:225/3:225);
set(gca,'YTickLabel',["0" "15^0" "15^1" "15^2"]);


