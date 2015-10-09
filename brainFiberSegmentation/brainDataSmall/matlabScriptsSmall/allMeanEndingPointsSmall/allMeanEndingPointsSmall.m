M=dlmread('averageEndingPointTemp.txt');

meanStartPoints=[M(:,1) M(:,2) M(:,3)];
meanEndPoints=[M(:,7) M(:,8) M(:,9)];

for i=1:8
    if i==1
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[1,0,0],'linewidth',5); %Red
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[1,0,0],'linewidth',5); %Red
        hold on;
    elseif i==2
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[0.7058,0,1],'linewidth',5); %Violet
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[0.7058,0,1],'linewidth',5); %Violet
        hold on;
    elseif i==3
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[0.1333,0,1],'linewidth',5); %Blue
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[0.1333,0,1],'linewidth',5); %Blue
        hold on;
    elseif i==4
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[0,0.8352,1],'linewidth',5); %Cyan
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[0,0.8352,1],'linewidth',5); %Cyan
        hold on;
        
    elseif i==5
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[0,1,0.2941],'linewidth',5); %Green
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[0,1,0.2941],'linewidth',5); %Green
        hold on;
        
    elseif i==6
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[0.9176,1,0],'linewidth',5); %Yellow
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[0.9176,1,0],'linewidth',5); %Yellow
        hold on;
        
    elseif i==7
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[1,0.4862,0],'linewidth',5); %Orange
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[1,0.4862,0],'linewidth',5); %Orange
        hold on;
        
    elseif i==8
        plot3(meanStartPoints(i,1),meanStartPoints(i,2),meanStartPoints(i,3),'*','Color',[1,0,0.996],'linewidth',5); %Pink
        hold on;
        plot3(meanEndPoints(i,1),meanEndPoints(i,2),meanEndPoints(i,3),'*','Color',[1,0,0.996],'linewidth',5); %Pink
        hold on;
    end
   
end
grid on;