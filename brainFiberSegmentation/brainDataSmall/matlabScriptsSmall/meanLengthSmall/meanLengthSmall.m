PROMPT='Enter Classes number(s): ';
CNC=input(PROMPT,'s');  %Class Num Combined; User inputs the string of Classes Num e.g "Class1 Class2" or "Class1 Class2 Class3" etc
CNS=strsplit(CNC);      %Class Num Separate; CNC is split by the delimeters and stored in a cell array CNS 
sizeCNS=size(CNS);      

for i=1:sizeCNS(1,2)
    num=str2num(CNS{1,i}(6));  %#ok<ST2NM>
    if (CNS{1,i}(1)=='C') || (CNS{1,i}(2)=='L') || (CNS{1,i}(3)=='A') || (CNS{1,i}(4)=='S') || (CNS{1,i}(5)=='S')  
        CNS{1,i}=strcat('class',int2str(num));
    end
end

meanSTD=cell(1,sizeCNS(1,2));

for i=1:sizeCNS(1,2)
    folderPath=strcat('../../',CNS{1,i});
    D=dir([folderPath,'/*.txt']);
    num=numel(D);
    length=zeros(1,num);
    for j=1:num
        filePath=strcat(folderPath,'/fiber',int2str(j),'.txt');
        M=dlmread(filePath);
        sizeM=size(M);
        for k=2:sizeM
            t=M(k,:)-M(k-1,:);
            length(1,j)=length(1,j)+norm(t);
        end
    end
    meanLength=mean(length);
    stdLength=std(length);
    meanSTD{1,i}=[meanLength stdLength];
end

x=zeros(1,sizeCNS(1,2));
A=zeros(1,sizeCNS(1,2));
B=zeros(1,sizeCNS(1,2));
for i=1:sizeCNS(1,2)
   x(1,i)=i; 
   A(1,i)=meanSTD{1,i}(1,1);
   B(1,i)=meanSTD{1,i}(1,2);
end
w1=0.6;w2=0.3;
bar(x,A,'BarWidth',w1,'FaceColor',[0,0.7,0.7]); hold on;bar(x,B,'BarWidth',w2,'FaceColor',[1,0.7,0.7]);
