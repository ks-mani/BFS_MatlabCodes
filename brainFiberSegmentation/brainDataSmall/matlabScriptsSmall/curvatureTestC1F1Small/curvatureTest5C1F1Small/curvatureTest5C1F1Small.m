
coordinateMatrix=dlmread('../../../class1/fiber1.txt');
fileSubName='curvaturePointsT5C1F1';
minMaxOfCuboid=[  min(coordinateMatrix(:,1))-1 min(coordinateMatrix(:,2))-1 min(coordinateMatrix(:,3))-1;
                max(coordinateMatrix(:,1))+1 max(coordinateMatrix(:,2))+1 max(coordinateMatrix(:,3))+1  ];
referencePoints=[   minMaxOfCuboid(1,1) minMaxOfCuboid(1,2) minMaxOfCuboid(1,3);
                    minMaxOfCuboid(1,1) minMaxOfCuboid(2,2) minMaxOfCuboid(1,3);
                    minMaxOfCuboid(1,1) minMaxOfCuboid(2,2) minMaxOfCuboid(2,3);
                    minMaxOfCuboid(1,1) minMaxOfCuboid(1,2) minMaxOfCuboid(2,3);
                    minMaxOfCuboid(2,1) minMaxOfCuboid(1,2) minMaxOfCuboid(2,3);
                    minMaxOfCuboid(2,1) minMaxOfCuboid(1,2) minMaxOfCuboid(1,3);
                    minMaxOfCuboid(2,1) minMaxOfCuboid(2,2) minMaxOfCuboid(1,3);
                    minMaxOfCuboid(2,1) minMaxOfCuboid(2,2) minMaxOfCuboid(2,3)   ];
                
 sizeOfCoordinateMatrix=size(coordinateMatrix);
 for rPt=1:8
     fileName=strcat(fileSubName,'-',int2str(rPt),'.txt');
     fileDescriptor=fopen(fileName,'w+');
     vector=coordinateMatrix(1,:)-referencePoints(rPt,:);
     angle1=acosd(vector/norm(vector));
     vector=coordinateMatrix(2,:)-referencePoints(rPt,:);
     angle2=acosd(vector/norm(vector));
     angleDiffLeft=angle2-angle1;
     for i=3:sizeOfCoordinateMatrix(1,1)
         angle1=angle2;
         vector=coordinateMatrix(i,:)-referencePoints(rPt,:);
         angle2=acosd(vector/norm(vector));
         angleDiffRight=angle2-angle1;
         if (angleDiffRight(1,1)*angleDiffLeft(1,1)<0)||(angleDiffRight(1,2)*angleDiffLeft(1,2)<0)||(angleDiffRight(1,3)*angleDiffLeft(1,3)<0)
            fprintf(fileDescriptor,'%d\t\t%f\t%f\t%f\n',i-1,coordinateMatrix(i-1,1),coordinateMatrix(i-1,2),coordinateMatrix(i-1,3));
         end
         angleDiffLeft=angleDiffRight;
     end
 end
 
fileName=strcat(fileSubName,'-',int2str(1),'.txt');             
set1=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(2),'.txt');             
set2=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(3),'.txt');             
set3=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(4),'.txt');             
set4=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(5),'.txt');             
set5=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(6),'.txt');             
set6=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(7),'.txt');             
set7=dlmread(fileName);
fileName=strcat(fileSubName,'-',int2str(8),'.txt');             
set8=dlmread(fileName);

set=union(set1,set2,'rows');
set=union(set,set3,'rows');
set=union(set,set4,'rows');
set=union(set,set5,'rows');
set=union(set,set6,'rows');
set=union(set,set7,'rows');
set=union(set,set8,'rows');


plot3(coordinateMatrix(:,1),coordinateMatrix(:,2),coordinateMatrix(:,3),'*','Color',[1,0,0]); %Red
hold on;
fileName=strcat(fileSubName,'.txt');
fileDescriptor=fopen(fileName,'w+');
sizeOfSet=size(set);
for g=1:sizeOfSet(1,1)
    fprintf(fileDescriptor,'%d\t\t%f\t%f\t%f\n',set(g,1),set(g,2),set(g,3),set(g,4));
    plot3(set(g,2),set(g,3),set(g,4),'*','Color',[0,0.8352,1]); %Cyan
    hold on;
end






