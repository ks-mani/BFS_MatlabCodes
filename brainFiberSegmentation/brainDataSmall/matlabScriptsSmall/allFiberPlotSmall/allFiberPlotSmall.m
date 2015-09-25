fileSubPath='../../class';

for cIndex=1:8
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:200
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        if(cIndex==1)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[1,0,0]); %Red
        elseif(cIndex==2)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0.7058,0,1]); %Violet
        elseif(cIndex==3)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0.1333,0,1]); %Blue
        elseif(cIndex==4)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0,0.8352,1]); %Cyan
        elseif(cIndex==5)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0,1,0.2941]); %Green
        elseif(cIndex==6)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0.9176,1,0]); %yellow
        elseif(cIndex==7)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[1,0.4862,0]); %Orange
        elseif(cIndex==8)
            plot3(M(:,1),M(:,2),M(:,3),'-','Color',[1,0,0.996]); %Pink
        end
        hold on;
    end
end
xlabel('X-Axis');
ylabel('Y-Axis');
zlabel('Z-Axis');
grid on;
