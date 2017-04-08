% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��2�� 10:15:21
% @version 0.5
% ��ȡ��λͼ
% �����������xyz���ݣ���getSur�����������������
% ����ƽ���ʱ����ֺܺã����ǲ��������ʱ��о�������������
function phase=getPhase(x,y,z)
    %��Դ��������λ����
    lamda = 632.8/1000/1000;
    %��Դ���꣬��λ����
    
    locX =  0;
    locY =  0;
    locZ = 1000;
    
    [lx,ly] = size(z);
    phase = zeros(lx,ly);
    for ii=1:lx
        for jj=1:ly
            tmpX=x(ii,jj);
            tmpY=y(ii,jj);
            tmpZ=z(ii,jj);
            %phase(ii,jj)=getDis(tmpX,tmpY,tmpZ,locX,locY,locZ);
            phase(ii,jj)= mod(2*getDis(tmpX,tmpY,tmpZ,locX,locY,locZ),lamda)/lamda*2*pi;
        end
    end
end
%�Ӻ���
%��ȡ�����ϵ㵽��Դ�ľ��룬Ȼ������λ
function dis=getDis(x,y,z,locX,locY,locZ)
   dis = sqrt((x-locX)^2+(y-locY)^2+(z-locZ)^2);
end