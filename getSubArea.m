% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��8�� 17:45:01
% @version 1.0
% ��ȡ�ֲ���ͼ��
% ���������ݳ����˴��������ʧ��
function subs=getSubArea(percision)
    % �ֲ�λ���ܹ�9�У���������7����Ԫ��ż������8����Ԫ���ܹ���67����ͼ
    % ����ʱ������һ�飬8��*9�У����������һ��Ϊ�գ�
    % ��1�е�1��Ϊ���Ͻ�
    % ���½�����Ϊ(-29.5,-29.5)
    % ���ֿ�cad�ļ�
    badMatch = 0;
    startP = -29.5;
    endP = 30.5;
    row = 8;
    col = 9;
    subSide = (endP-startP)/7;
    subSize = length(0:percision:subSide);
    subs(1:subSize,1:subSize,1:row,1:col)=0; 
    for i = 1:row
        for j =1:col
            if (mod(j,2)==1)&i==row
                subs(:,:,i,j)=0;
                continue;
            end
            [x,y]=getXY(i,j,endP,startP,col,subSide);
            [x1,y1,z1]=getSurByEquation(percision,x-subSide/2,y-subSide/2,subSide);
            k=getFitEuq(x1,y1,z1);
            [x2,y2,z2]=getSurByFit(k,percision,x-subSide/2,y-subSide/2,subSide);
            diff=z1-z2;
            
            tmp = max(max(diff));
            if (tmp>1)
                badMatch=badMatch+1;
                fprintf('%d-%d\n',i,j);
            end
            subs(:,:,i,j)=diff;
        end
     end
     fprintf('bad-%d\n',badMatch);
end
%�������ԣ�û������
function [x,y]=getXY(i,j,endP,startP,col,subSide)%��ȡ���Ǿ������ĵ�����
    stepX = (endP-startP)/(col-1);
    stepY = subSide;
    if mod(j,2)==1%������
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY/2);
    else%ż����
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY);
    end
end
