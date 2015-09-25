%In this we are computing the angle made by the vector (i.e. (x,y,z)-(0,0,0)) with the coordinate axis 

coordinateMatrix=dlmread('../../../class1/fiber3.txt');
fileDescriptor=fopen('angleT2C1F3.txt','w+');
sizeOfCoordinateMatrix=size(coordinateMatrix);
fprintf(fileDescriptor,'Point No.\t\tAngle\n');
for i=1:sizeOfCoordinateMatrix(1,1)
  angle=acosd(coordinateMatrix(i,:)/norm(coordinateMatrix(i,:)));
  fprintf(fileDescriptor,'%d\t\t%f %f %f\n',i,angle(1,1),angle(1,2),angle(1,3));
end