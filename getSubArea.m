% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��8�� 17:45:01
% @version 1.0
% ��ȡ�ֲ���ͼ��
function sub=getSubArea(percision)
    % �ֲ�λ���ܹ�9�У���������7����Ԫ��ż������8����Ԫ���ܹ���67����ͼ
    % ����ʱ������һ�飬8��*9�У����������һ��Ϊ�գ�
    % ��1�е�1��Ϊ���Ͻ�
    % ���½�����Ϊ(-29.5,-29.5)
    % ���ֿ�cad�ļ�
    startP = -29.5;
    endP = 30.5;
    subSide = (endP-startP)/7;
end
%�������ԣ�û������
function [x,y]=getXY(i,j)%��ȡ���Ǿ������ĵ�����
    stepX = (endP-startP)/8;
    stepY = subSide;
    if mod(j,2)==1%������
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY/2);
    else%ż����
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY);
    end
end
