n=10000;%������������
a=sqrt(n);%���ı߳�
R=3;T=5;S=0;P=1;%�趨֧���������
c=zeros(n,2);%��һ�б�����ԣ��Ƿ����������Ϊ1������Ϊ0�����ڶ��б�������
index=randperm(n);
c(index(1:5000),1)=1;
x0=sum(c(:,1));%��¼����������
y0=0;%��¼������
img=zeros(a,a,3);%��ʾ�������뱳���ߵĵ���ͼ
b=c(:,1);
for t=1:280%��ʾ���Ľ��е�����
for i=1:n
   if i==1%ȷ�����Ͻǲ����ߵ�����
       if c(i,1)==1&&c(i+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a*a-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a*a-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-1,1)==0
           c(i,2)=c(i,2)+P;
       end
   elseif i==a%ȷ�����Ͻǲ����ߵ�����
       if c(i,1)==1&&c(a-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(2*a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(2*a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(2*a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(2*a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a*a-2*a+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-2*a+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-2*a+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-2*a+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a*a-a+2,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-a+2,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-a+2,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-a+2,1)==0
           c(i,2)=c(i,2)+P;
       end 
   elseif i==(a*a-a+1)%ȷ�����½ǲ����ߵ�����
       if c(i,1)==1&&c(a*a-a+2,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-a+2,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-a+2,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-a+2,1)==0
           c(i,2)=c(i,2)+P;
       end 
       if c(i,1)==1&&c(a*a-2*a+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-2*a+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-2*a+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-2*a+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(2*a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(2*a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(2*a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(2*a,1)==0
           c(i,2)=c(i,2)+P;
       end
   elseif i==a*a%ȷ�����½ǲ����ߵ�����
       if c(i,1)==1&&c(i-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(a*a-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(a*a-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(a*a-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(a*a-a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(2,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(2,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(2,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(2,1)==0
           c(i,2)=c(i,2)+P;
       end
   elseif i>=2&&i<=(a-1)%ȷ���ϱ����ϲ����ߵ����� 
       if c(i,1)==1&&c(i-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+a*a-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+a*a-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+a*a-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+a*a-a,1)==0
           c(i,2)=c(i,2)+P;
       end
   elseif mod((i-1),a)==0%ȷ��������ϲ����ߵ�����
       if c(i,1)==1&&c(i+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+a-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+a-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+a-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+a-1,1)==0
           c(i,2)=c(i,2)+P;
       end
   elseif mod(i,a)==0%ȷ���ұ����ϲ����ߵ�����
       if c(i,1)==1&&c(i-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-a+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-a+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-a+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-a+1,1)==0
           c(i,2)=c(i,2)+P;
       end
   elseif i>=(a*a-a+2)&&i<=(a*a-1)%ȷ���±����ϲ����ߵ�����
       if c(i,1)==1&&c(i-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-a*a+a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-a*a+a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-a*a+a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-a*a+a,1)==0
           c(i,2)=c(i,2)+P;
       end
   else
       if c(i,1)==1&&c(i+1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-1,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-1,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-1,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-1,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i+a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i+a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i+a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i+a,1)==0
           c(i,2)=c(i,2)+P;
       end
       if c(i,1)==1&&c(i-a,1)==1
           c(i,2)=c(i,2)+R;
       end
       if c(i,1)==1&&c(i-a,1)==0
           c(i,2)=c(i,2)+S;
       end
       if c(i,1)==0&&c(i-a,1)==1
           c(i,2)=c(i,2)+T;
       end
       if c(i,1)==0&&c(i-a,1)==0
           c(i,2)=c(i,2)+P;
       end
   end   
end
for i=1:n
   if i==1%ȷ�����Ͻǲ����ߵĲ���
       if c(i,2)<c(i+1,2)
           c(i,1)=c(i+1,1);
       end
       if c(i,2)<c(a+1,2)
           c(i,1)=c(a+1,1);
       end
       if c(i,2)<c(a*a-1,2)
           c(i,1)=c(a*a-1,1);
       end
       if c(i,2)<c(a*a-a,2)
           c(i,1)=c(a*a-a,1);
       end
       
   elseif i==a%ȷ�����Ͻǲ����ߵĲ���
       if c(i,2)<c(i-1,2)
           c(i,1)=c(i-1,1);
       end
       if c(i,2)<c(a+i,2)
           c(i,1)=c(a+i,1);
       end
       if c(i,2)<c(a*a-2*a+1,2)
           c(i,1)=c(a*a-2*a+1,1);
       end
       if c(i,2)<c(a*a-a+2,2)
           c(i,1)=c(a*a-a+2,1);
       end  
   elseif i==(a*a-a+1)%ȷ�����½ǲ����ߵĲ���
       if c(i,2)<c(i+1,2)
           c(i,1)=c(i+1,1);
       end
       if c(i,2)<c(i-a,2)
           c(i,1)=c(i-a,1);
       end
       if c(i,2)<c(a-1,2)
           c(i,1)=c(a-1,1);
       end
       if c(i,2)<c(2*a,2)
           c(i,1)=c(2*a,1);
       end    
   elseif i==a*a%ȷ�����½ǲ����ߵĲ���
       if c(i,2)<c(i-1,2)
           c(i,1)=c(i-1,1);
       end
       if c(i,2)<c(i-a,2)
           c(i,1)=c(i-a,1);
       end
       if c(i,2)<c(a+1,2)
           c(i,1)=c(a+1,1);
       end
       if c(i,2)<c(2,2)
           c(i,1)=c(2,1);
       end
   elseif i>=2&&i<=(a-1)%ȷ���ϱ����ϲ����ߵĲ���
       if c(i,2)<c(i-1,2)
           c(i,1)=c(i-1,1);
       end
       if c(i,2)<c(i+1,2)
           c(i,1)=c(i+1,1);
       end
       if c(i,2)<c(i+a,2)
           c(i,1)=c(i+a,1);
       end
       if c(i,2)<c(i+a*a-a,2)
           c(i,1)=c(i+a*a-a,1);
       end
   elseif mod((i-1),a)==0%ȷ��������ϲ����ߵĲ���
        if c(i,2)<c(i+1,2)
           c(i,1)=c(i+1,1);
       end
       if c(i,2)<c(i+a,2)
           c(i,1)=c(i+a,1);
       end
       if c(i,2)<c(i-a,2)
           c(i,1)=c(i-a,1);
       end
       if c(i,2)<c(i+a-1,2)
           c(i,1)=c(i+a-1,1);
       end 
   elseif mod(i,a)==0%ȷ���ұ����ϲ����ߵĲ���
        if c(i,2)<c(i-1,2)
           c(i,1)=c(i-1,1);
       end
       if c(i,2)<c(i+a,2)
           c(i,1)=c(i+a,1);
       end
       if c(i,2)<c(i-a,2)
           c(i,1)=c(i-a,1);
       end
       if c(i,2)<c(i-a+1,2)
           c(i,1)=c(i-a+1,1);
       end 
   elseif i>=(a*a-a+2)&&i<=(a*a-1)%ȷ���±����ϲ����ߵĲ���
       if c(i,2)<c(i+1,2)
           c(i,1)=c(i+1,1);
       end
       if c(i,2)<c(i-1,2)
           c(i,1)=c(i-1,1);
       end
       if c(i,2)<c(i-a,2)
           c(i,1)=c(i-a,1);
       end
       if c(i,2)<c(i-a*a+a,2)
           c(i,1)=c(i-a*a+a,1);
       end 
   else
       if c(i,2)<c(i+1,2)
           c(i,1)=c(i+1,1);
       end
       if c(i,2)<c(i-1,2)
           c(i,1)=c(i-1,1);
       end
       if c(i,2)<c(i-a,2)
           c(i,1)=c(i-a,1);
       end
       if c(i,2)<c(i+a,2)
           c(i,1)=c(i+a,1);
       end 
   end   
end
   x0=[x0,sum(c(:,1))];%�洢�����ߵ�����
   y0=[y0,sum(c(:,2))];%�洢����
   if mod(t,20)==0
       b=[b,c(:,1)];
   end
end

for t=1:15
   for j=1:n
    if mod(j,a)==0
        col=a;
    else
        col=mod(j,a);
    end
    row=ceil(j/a); 
    img(row,col,1)=b(j,t);
   end
   subplot(3,5,t)
   imshow(img);
end




