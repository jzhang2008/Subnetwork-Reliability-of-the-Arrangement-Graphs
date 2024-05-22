
%bp1
T_sim=[T_sim541 T_sim542 T_sim543 T_sim641 T_sim642 T_sim643];
b=[b541 b542 b543 b641 b642 b643];
figure
plot([1:180],b,'b*',[1:180],T_sim,'ro','LineWidth',0.25) 
legend('actual value','predictive value','Location','northwest')
xlabel('Sample number','FontSize',14);
ylabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks','FontSize',14);
ylim([0 1])

ax = gca;
ax.YGrid = 'off';
ax.XGrid = 'on';

annotation('textbox',[.9 .5 .1 .2],'String','\itD\rm(\itA_5_,_4^1\rm)','EdgeColor','none')
%%
%bp2
T_sim=[T_sim651 T_sim652 T_sim653 T_sim751 T_sim752 T_sim753];
b=[b651 b652 b653 b751 b752 b753];
figure
plot([1:180],b,'b*',[1:180],T_sim,'ro','LineWidth',0.25)  
legend('actual value','predictive value','Location','northwest')
xlabel('Sample number','FontSize',14);
ylabel('Probability of existing fault-free A_n_-_m_,_k_-_m subnetworks','FontSize',14);
ylim([0 1])

ax = gca;
ax.YGrid = 'off';
ax.XGrid = 'on';

annotation('textbox',[.9 .5 .1 .2],'String','\itD\rm(\itA_5_,_4^1\rm)','EdgeColor','none')