function [new_matrix_cells,new_v]=border_control(matrix_cells,a,b,v,vmax)
%�߽����������ڱ߽磬���Ƴ�������
%���ڱ߽�,��ͷ���ڵ�·�߽磬����һ������0.9��ȥ
n=length(matrix_cells);

%if a==n
 %rand('state',sum(100*clock)*rand(1));%?��?????��??��?
  % p_1=rand(1); %�����������
 
 %if p_1<=1 %����������С��0.9�������뿪·�Σ��������
  %  matrix_cells(n)=0;
   % v(n)=0;    
    %end
%end
%��ڱ߽磬���ɷֲ����1s��ƽ�����ﳵ����Ϊq��tΪ1s
%if b>vmax
 %   t=1;
  %  q=0.25;
   % x=1;
   % p=(q*t)^x*exp(-q*t)/prod(x); %1s����1��������ĸ���
   %rand('state',sum(100*clock)*rand(1));
   % p_2=rand(1);
   % if p_2<=p 
   %    m=min(b-vmax,vmax);
    %   matrix_cells(m)=1;
    %   v(m)=m;    
    %end
%end
%new_matrix_cells=matrix_cells;
%new_v=v;




if a==n
    rand('state',sum(100*clock)*rand(1));  
    matrix_cells(1)=1;
    v(1)=v(n); 
    matrix_cells(n)=0;
    v(n)=0;    
end
new_matrix_cells=matrix_cells;
new_v=v;   