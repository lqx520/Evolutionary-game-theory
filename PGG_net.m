%PGG game����״ģ��
% NM=[];NRM=[];NPM=[];
% for k=1:1000
n=900;%����Ϊƽ����
a=sqrt(n);
p=0.2;%���˵ı���
v=50;%ÿһ��ͬ�������ũ����Ҫ��Ͷ��
ar=1000;%������ũ����
ap=500;%������ũ����
br=1000;%����ũ�ﱻ����ʧ
bp=500;%����ũ�ﱻ����ʧ
r=0.6;%������ˮ�ĸ���
T=6000;%ά�޴�ӵķ���
NC=0.5*n;%��ʼ������
index1=randperm(n);
index2=randperm(n);
c=zeros(n,3);%������ʼ��������������Ϣ����һ��Ϊ1��ʾ�������ڶ���Ϊ1��ʾΪ���ˣ������б�ʾ����
c(index1(1:NC),1)=1;%����ʼNC���������������
c(index2(1:n*p),2)=1;%������Ϊp�ĸ����������
NC0=NC/n;%������ռ�������ı���
img=zeros(a,a,3);
b1=c(:,1);
b2=c(:,2);
NRC0=0;%�����к����ߵ�����
for j=1:n
    if c(j,2)==1
        NRC0=c(j,1)+NRC0;
    end
end
NPC0=0;%�����к����ߵ�����
for j=1:n
    if c(j,2)==0
        NPC0=c(j,1)+NPC0;
    end
end
for t=1:50
    if NC*v>=T%�����ʽ��㹻ά�����
        for j=1:n
            if c(j,1)==1&&c(j,2)==1
                c(j,3)=ar-v;%�������и��˵�����
            end
            if c(j,1)==1&&c(j,2)==0
                c(j,3)=ap-v;%�����������˵�����
            end
            if c(j,1)==0&&c(j,2)==1
                c(j,3)=ar;%�������и��˵�����
            end
            if c(j,1)==0&&c(j,2)==0
                c(j,3)=ap;%�����������˵�����
            end
        end%for
    else %�����ʽ𲻹�ά�����
        if rand(1)<r %��r�ĸ��ʷ���ˮ
         for j=1:n
            if c(j,1)==1&&c(j,2)==1
                c(j,3)=-v-br;%�������и��˵�����
            end
            if c(j,1)==1&&c(j,2)==0
                c(j,3)=-v-bp;%�����������˵�����
            end
            if c(j,1)==0&&c(j,2)==1
                c(j,3)=-br;%�������и��˵�����
            end
            if c(j,1)==0&&c(j,2)==0
                c(j,3)=-bp;%�����������˵�����
            end
          end%for
        else %û�з���ˮ�����
          for j=1:n
            if c(j,1)==1&&c(j,2)==1
                c(j,3)=ar-v;%�������и��˵�����
            end
            if c(j,1)==1&&c(j,2)==0
                c(j,3)=ap-v;%�����������˵�����
            end
            if c(j,1)==0&&c(j,2)==1
                c(j,3)=ar;%�������и��˵�����
            end
            if c(j,1)==0&&c(j,2)==0
                c(j,3)=ap;%�����������˵�����
            end
          end%for      
        end
    end
   for i=1:n
   %����״�ṹ��ȷ�������ߵĲ���
   if i==1%���Ͻ�
       if c(i,3)<c(i+1,3)
           c(i,1)=c(i+1,1);
       end
       if c(i,3)<c(a+1,3)
           c(i,1)=c(a+1,1);
       end
       if c(i,3)<c(a*a-1,3)
           c(i,1)=c(a*a-1,1);
       end
       if c(i,3)<c(a*a-a,3)
           c(i,1)=c(a*a-a,1);
       end
       
   elseif i==a%���Ͻ�
       if c(i,3)<c(i-1,3)
           c(i,1)=c(i-1,1);
       end
       if c(i,3)<c(a+i,3)
           c(i,1)=c(a+i,1);
       end
       if c(i,3)<c(a*a-2*a+1,3)
           c(i,1)=c(a*a-2*a+1,1);
       end
       if c(i,3)<c(a*a-a+2,3)
           c(i,1)=c(a*a-a+2,1);
       end  
   elseif i==(a*a-a+1)%���½�
       if c(i,3)<c(i+1,3)
           c(i,1)=c(i+1,1);
       end
       if c(i,3)<c(i-a,3)
           c(i,1)=c(i-a,1);
       end
       if c(i,3)<c(a-1,3)
           c(i,1)=c(a-1,1);
       end
       if c(i,3)<c(2*a,3)
           c(i,1)=c(2*a,1);
       end    
   elseif i==a*a%���½�
       if c(i,3)<c(i-1,3)
           c(i,1)=c(i-1,1);
       end
       if c(i,3)<c(i-a,3)
           c(i,1)=c(i-a,1);
       end
       if c(i,3)<c(a+1,3)
           c(i,1)=c(a+1,1);
       end
       if c(i,3)<c(2,3)
           c(i,1)=c(2,1);
       end
   elseif i>=2&&i<=(a-1)%�ϱ�
       if c(i,3)<c(i-1,3)
           c(i,1)=c(i-1,1);
       end
       if c(i,3)<c(i+1,3)
           c(i,1)=c(i+1,1);
       end
       if c(i,3)<c(i+a,3)
           c(i,1)=c(i+a,1);
       end
       if c(i,3)<c(i+a*a-a,3)
           c(i,1)=c(i+a*a-a,1);
       end
   elseif mod((i-1),a)==0%���
        if c(i,3)<c(i+1,3)
           c(i,1)=c(i+1,1);
       end
       if c(i,3)<c(i+a,3)
           c(i,1)=c(i+a,1);
       end
       if c(i,3)<c(i-a,3)
           c(i,1)=c(i-a,1);
       end
       if c(i,3)<c(i+a-1,3)
           c(i,1)=c(i+a-1,1);
       end 
   elseif mod(i,a)==0%�ұ�
        if c(i,3)<c(i-1,3)
           c(i,1)=c(i-1,1);
       end
       if c(i,3)<c(i+a,3)
           c(i,1)=c(i+a,1);
       end
       if c(i,3)<c(i-a,3)
           c(i,1)=c(i-a,1);
       end
       if c(i,3)<c(i-a+1,3)
           c(i,1)=c(i-a+1,1);
       end 
   elseif i>=(a*a-a+2)&&i<=(a*a-1)%�±�
       if c(i,3)<c(i+1,3)
           c(i,1)=c(i+1,1);
       end
       if c(i,3)<c(i-1,3)
           c(i,1)=c(i-1,1);
       end
       if c(i,3)<c(i-a,3)
           c(i,1)=c(i-a,1);
       end
       if c(i,3)<c(i-a*a+a,3)
           c(i,1)=c(i-a*a+a,1);
       end 
   else
       if c(i,3)<c(i+1,3)
           c(i,1)=c(i+1,1);
       end
       if c(i,3)<c(i-1,3)
           c(i,1)=c(i-1,1);
       end
       if c(i,3)<c(i-a,3)
           c(i,1)=c(i-a,1);
       end
       if c(i,3)<c(i+a,3)
           c(i,1)=c(i+a,1);
       end 
   end   
end
    NC=sum(c(:,1));
    NC0=[NC0,NC/n];
    NRC=0;
    NPC=0;
    for j=1:n
        if c(j,2)==1
            NRC=c(j,1)+NRC;
        end
    end
    NRC0=[NRC0,NRC];
    for j=1:n
        if c(j,2)==0
            NPC=c(j,1)+NPC;
        end
    end
    NPC0=[NPC0,NPC];
    if mod(t,6)==0
       b1=[b1,c(:,1)];
       b2=[b2,c(:,2)];
    end
 end
NRC0=NRC0/(n*p);
NPC0=NPC0/(n*(1-p));
% NM=[NM,mean(NC0(30:50))];
% NRM=[NRM,mean(NRC0(30:50))];
% NPM=[NPM,mean(NPC0(30:50))];
% end
    subplot(3,3,1)
    plot(0:t,NC0);
    title('������ռ�������ı���')
    subplot(3,3,2)
    plot(0:t,NRC0);
    title('�����к����ߵı���')
    subplot(3,3,3)
    plot(0:t,NPC0)
    title('�����к����ߵı���')   
for s=1:6
   img=ones(a,a,3);
   for j=1:n
    if mod(j,a)==0
        col=a;
    else
        col=mod(j,a);
    end
    row=ceil(j/a); 
    img(row,col,1)=b1(j,s);
    img(row,col,2)=b2(j,s);
   end
   subplot(3,3,s+3)
   imshow(img);
end
% mean(NM)
% mean(NRM)
% mean(NPM)
% subplot(2,2,1)
% plot(NM);
% subplot(2,2,2)
% plot(NRM);
% subplot(2,2,3)
% plot(NPM);