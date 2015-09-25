% In this we are taking angle difference between two consecutive points. If there is a sign change in any component of the two consecutive angle 
% differences, then the final point of the former angle difference is the curvature point

coordinateMatrix=dlmread('../../../class1/fiber2.txt');
fileDescriptor=fopen('curvaturePointsT1C1F2.txt','w+');
angle1=acosd(coordinateMatrix(1,:)/norm(coordinateMatrix(1,:)));
angle2=acosd(coordinateMatrix(2,:)/norm(coordinateMatrix(2,:)));
angleDiffLeft=angle2-angle1;
sizeOfCoordinateMatrix=size(coordinateMatrix);
plot3(coordinateMatrix(1,1),coordinateMatrix(1,2),coordinateMatrix(1,3),'*','Color',[1,0,0]); %Red
hold on ;
plot3(coordinateMatrix(2,1),coordinateMatrix(2,2),coordinateMatrix(2,3),'*','Color',[1,0,0]); %Red
hold on ;
fprintf(fileDescriptor,'Point No.\t\tLeft of Curvature Point\t\t\tCurvature Point\t\t\t\tRight of Curvature Point\n');
for i=3:sizeOfCoordinateMatrix(1,1)
  angle1=angle2;
  angle2=acosd(coordinateMatrix(i,:)/norm(coordinateMatrix(i,:)));
  angleDiffRight=angle2-angle1;
  if (angleDiffRight(1,1)*angleDiffLeft(1,1)<0)||(angleDiffRight(1,2)*angleDiffLeft(1,2)<0)||(angleDiffRight(1,3)*angleDiffLeft(1,3)<0)
      fprintf(fileDescriptor,'%f\t\t%f-%f-%f\t\t%f-%f-%f\t\t%f-%f-%f\n',i-1,coordinateMatrix(i-2,1),coordinateMatrix(i-2,2),coordinateMatrix(i-2,3),coordinateMatrix(i-1,1),coordinateMatrix(i-1,2),coordinateMatrix(i-1,3),coordinateMatrix(i,1),coordinateMatrix(i,2),coordinateMatrix(i,3));
      plot3(coordinateMatrix(i-1,1),coordinateMatrix(i-1,2),coordinateMatrix(i-1,3),'*','Color',[0,0.8352,1]); %Cyan
      hold on;
      plot3(coordinateMatrix(i,1),coordinateMatrix(i,2),coordinateMatrix(i,3),'*','Color',[1,0,0]); %Red
  else
      plot3(coordinateMatrix(i,1),coordinateMatrix(i,2),coordinateMatrix(i,3),'*','Color',[1,0,0]); %Red
      
  end
  hold on;
  angleDiffLeft=angleDiffRight;
  
end
grid on ;