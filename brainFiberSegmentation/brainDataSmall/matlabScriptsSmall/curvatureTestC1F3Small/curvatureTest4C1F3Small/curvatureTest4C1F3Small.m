% In this, we are taking two consecutive angle difference, taking difference of these two, squaring each term and adding all
% the term and plotting top 20 points
% First three columns in output file are right point, middle point, left point respectively. Take difference of angle of (right
% point & middle point)(diff2) and (middle point & left point)(diff1). Then Apply formula (diff2x-diff1x)^2+(diff2y-diff1y)^2+(diff2z-diff1z)^2

coordinateMatrix=dlmread('../../../class1/fiber3.txt');
fileDescriptor=fopen('sumSquareDiffAngleDiffT4C1F3.txt','w+');
angle1=acosd(coordinateMatrix(1,:)/norm(coordinateMatrix(1,:)));
angle2=acosd(coordinateMatrix(2,:)/norm(coordinateMatrix(2,:)));
angleDiffLeft=angle2-angle1;
sizeOfCoordinateMatrix=size(coordinateMatrix);
for i=3:sizeOfCoordinateMatrix(1,1)
  angle1=angle2;
  angle2=acosd(coordinateMatrix(i,:)/norm(coordinateMatrix(i,:)));
  angleDiffRight=angle2-angle1;
  sumSquareDiffAngleDiff=sum((angleDiffRight-angleDiffLeft).^2);
  fprintf(fileDescriptor,'%d\t%d\t%d\t\t\t%f\n',i,i-1,i-2,sumSquareDiffAngleDiff);
  angleDiffLeft=angleDiffRight;  
end

computedMatrix=dlmread('sumSquareDiffAngleDiffT4C1F3.txt');
sortedMatrix=sortrows(computedMatrix,-4);

plot3(coordinateMatrix(:,1),coordinateMatrix(:,2),coordinateMatrix(:,3),'*','Color',[1,0,0]); %Red
hold on;

for c=1:20
    pt=sortedMatrix(c,2);
    plot3(coordinateMatrix(pt,1),coordinateMatrix(pt,2),coordinateMatrix(pt,3),'*','Color',[0,0.8352,1]); %Cyan
    hold on;
end






