close all
NumVBins=round(10*log(NumScenarios));

for t=1:length(Overall_Correlations)
    figure

    subplot(3,1,1)
    [n,xout] = hist(Suboptimal.StrsTst_Satisfaction(t,:),NumVBins) ;
    h=bar(xout,n,1);
    hold on
    h=plot(Optimal.StrsTst_Satisfaction(t),0,'.');
    set(h,'color','r','markersize',15)
    grid on
    title('satisfaction')

    subplot(3,1,2)
    [n,xout] = hist(Suboptimal.StrsTst_CostConstraints(t,:),NumVBins) ;
    h=bar(xout,n,1);
    grid on
    title('cost of constraint violation')

    subplot(3,1,3)
    [n,xout] = hist(Suboptimal.StrsTst_OppCost(t,:),NumVBins) ;
    h=bar(xout,n,1);
    grid on
    title('opportunity cost')

end