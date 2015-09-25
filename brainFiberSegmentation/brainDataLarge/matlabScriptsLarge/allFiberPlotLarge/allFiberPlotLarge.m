fileSubPath='../../class';

    cIndex=1;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:2800
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[1,0,0]); %Red
  
        hold on;
    end

    
    
    
    cIndex=2;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:816
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0.7058,0,1]); %Violet
        hold on;
    end

    
    
    cIndex=3;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:11041
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0.1333,0,1]); %Blue
        hold on;
    end

    
    
    cIndex=4;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:1804
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0,0.8352,1]); %Cyan
        hold on;
    end

    
    
    cIndex=5;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:1076
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0,1,0.2941]); %Green
        hold on;
    end

    
    
    cIndex=6;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:324
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[0.9176,1,0]); %yellow
        hold on;
    end

    
    
    cIndex=7;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:858
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[1,0.4862,0]); %Orange
        hold on;
    end

    
    
    cIndex=8;
    filePathTemp=strcat(fileSubPath,int2str(cIndex),'/fiber');
    for fIndex=1:310
        filePath=strcat(filePathTemp,int2str(fIndex),'.txt');
        M=dlmread(filePath);
        plot3(M(:,1),M(:,2),M(:,3),'-','Color',[1,0,0.996]); %Pink
        hold on;
    end



xlabel('X-Axis');
ylabel('Y-Axis');
zlabel('Z-Axis');
grid on;