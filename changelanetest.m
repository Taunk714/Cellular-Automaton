n=100; %���ݳ�ʼ��
z=zeros(2,n); %Ԫ������
z=roadstart(z,40); %��·״̬��ʼ����·��������ֲ�5��
cells=z;
vmax=3; %����ٶ�
v=speedstart(cells,vmax); %�ٶȳ�ʼ��

cells1=cells(1,:);
cells1_new=cells(1,:);
cells2=cells(2,:);  
cells2_new=cells(2,:);
i=searchleadcar(cells1);
for j=1:i
    if cells1(i-j+1)==0;
        continue;
    else k1=searchfrontcar((i-j+1),cells1);%k1��ʾ���ڳ���ǰ������λ��
        k2=searchfrontcar((i-j+1),cells2);%k1��ʾĿ�공��ǰ������λ��
        if k1==0;
            d1=n-(i-j+1);
        else d1=k1-(i-j+1)-1;%d1Ϊ���ڳ���ǰ����������
        end
        if k2==0;
            d2=n-(i-j+1);
        else d2=k2-(i-j+1)-1;%d2ΪĿ�공��ǰ����������
        end    
        if (d1<vmax)&(d2>vmax);
            cells1(i-j+1)=0;
            cells2(i-j+1)=1;
        else continue;
        end
    end
end
