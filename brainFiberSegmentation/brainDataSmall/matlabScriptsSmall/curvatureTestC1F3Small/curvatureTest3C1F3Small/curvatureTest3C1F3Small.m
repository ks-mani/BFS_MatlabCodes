%In this, we are computing the angle difference between angle of two consecutive points


coordinateMatrix=dlmread('../../../class1/fiber3.txt');
fileDescriptor=fopen('angleDifferenceT3C1F3.txt','w+');
angle1=acosd(coordinateMatrix(1,:)/norm(coordinateMatrix(1,:)));
sizeOfCoordinateMatrix=size(coordinateMatrix);
fprintf(fileDescriptor,'Final Point - Initial Point\t\tAngle Difference\n');
for i=2:sizeOfCoordinateMatrix(1,1)
  angle2=acosd(coordinateMatrix(i,:)/norm(coordinateMatrix(i,:)));
  angleDiff=angle2-angle1;
  fprintf(fileDescriptor,'\t%d-%d\t\t\t%f,%f,%f\n',i,i-1,angleDiff(1,1),angleDiff(1,2),angleDiff(1,3));
  angle1=angle2;
end