%PGG game�Ļ�״ģ��
NM=[];NRM=[];NPM=[];
for k=1:1000
n=1000;p=0.2;v=50;ar=1000;ap=500;br=1000;bp=500;r=0.6;T=5000;NC=0.5*n;%��ʼ������
t=100;
index1=randperm(n);
index2=randperm(n);
c=zeros(n,3);%������ʼ��������������Ϣ����һ��Ϊ1��ʾ�������ڶ���Ϊ1��ʾΪ���ˣ������б�ʾ����
c(index1(1:NC),1)=1;%����ʼNC���������������
c(index2(1:n*p),2)=1;%������Ϊp�ĸ����������
NC0=NC/n;%������ռ�������ı���
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
for i=1:t%t��ʾ�ݻ�������
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
    %���濼�ǻ�״�������������
    %�˵�Ĳ���ѡ��
    if c(1,3)<c(n,3)
        c(1,1)=c(n,1);
    end
    if c(1,3)<c(2,3)
        c(1,1)=c(2,1);
    end
    if c(n,3)<c(n-1,3)
        c(n,1)=c(n-1,1);
    end
    if c(n,3)<c(1,3)
        c(n,1)=c(1,1);
    end
    %�м��Ĳ���ѡ��
    for j=2:(n-1)
            if c(j,3)<c(j-1,3)
                c(j,1)=c(j-1,1);
            end
            if c(j,3)<c(j+1,3)
                c(j,1)=c(j+1,1);
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

end%for
NRC0=NRC0/(n*p);
NPC0=NPC0/(n*(1-p));
%subplot(2,2,1)
%plot(0:t,NC0);
%title('������ռ�������ı���')
%subplot(2,2,2)
%plot(0:t,NRC0);
%title('���˺����ߵı���')
%subplot(2,2,3)
%plot(0:t,NPC0)
%title('���˺����ߵı���')
NM=[NM,mean(NC0(60:90))];
NRM=[NRM,mean(NRC0(60:90))];
NPM=[NPM,mean(NPC0(60:90))];
end
mean(NM)
mean(NRM)
mean(NPM)
subplot(2,2,1)
plot(NM);
subplot(2,2,2)
plot(NRM);
subplot(2,2,3)
plot(NPM);