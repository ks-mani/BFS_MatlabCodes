% In this we are projecting the fiber points onto XY, YZ and XZ plane and finding out the curvature point by enclosing that projection 
% in a rectangle and then applying sign of angle change method by taking each point of the rectangle as reference


promptForClass='Enter Class Num (1-8) :  ';
class=input(promptForClass);
promptForFiberNum='Enter fiber number (1-200) :  ';
fiber=input(promptForFiberNum);

fiberPath=strcat('../../class',int2str(class),'/fiber',int2str(fiber),'.txt');

data=dlmread(fiberPath);

dataProj=cell(1,3);
dataProj{1,1}=[data(:,1),data(:,2)];
dataProj{1,2}=[data(:,2),data(:,3)];
dataProj{1,3}=[data(:,1),data(:,3)];

sizeData=size(data);
points=zeros(sizeData(1,1),1);

for i=1:3
    M=dataProj{1,i};
    ref=[min(M(:,1))-1 min(M(:,2))-1; min(M(:,1))-1 max(M(:,2))+1; max(M(:,1))+1 max(M(:,2))+1; max(M(:,1))+1 min(M(:,2))-1];
    sizeM=size(M);
    for j=1:4
        N=M;
        N(:,1)=N(:,1)-ref(j,1);
        N(:,2)=N(:,2)-ref(j,2);
        angle=zeros(sizeM(1,1),1);
        for k=1:sizeM(1,1)
            angle(k,1)=atan(N(k,2)/N(k,1));
        end
        angleDiff=zeros(sizeM(1,1)-1,1);
        for k=2:sizeM(1,1)
            angleDiff(k-1,1)=angle(k,1)-angle(k-1,1);
        end
        for k=2:sizeM(1,1)-1
            if(angleDiff(k,1)*angleDiff(k-1,1)<0)
                points(k,1)=1;
            end
        end
    end
   
end

plot3(data(:,1),data(:,2),data(:,3),'*','Color',[1,0,0]);
hold on;
for c=1:sizeM(1,1)
   if(points(c,1)==1)
       plot3(data(c,1),data(c,2),data(c,3),'*','Color',[0,0.8352,1]);
       hold on;
   end
end



