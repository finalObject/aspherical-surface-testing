% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��8�� 9:48:22
% @version 2.0
% ͨ����ϳ��������������ؽ�����
% �������Ĭ���������Σ�xy��Χ���Բ�ͬ
function [ x1,y1,z1 ] = getSurByFit( k ,percision,startX,startY,side)
    % k(1)=x1;
    % k(2)=y1;
    % k(3)=z1;
    % k(4)=a;
    % k(5)=b;
    % k(6)=c;
    % side����ͼ�������ݵı߳������ص�xyz������side*side
    if (nargin==2)
        startX=-29.5;
        startY=-29.5;
        side=60;
    end
    x1 = startX:percision:(startX+side);
    y1 = startY:percision:(startY+side);
    lengthX = length(x1);
    [x1,y1] = meshgrid(x1,y1);
    z1 = zeros(lengthX,lengthX);
    for ii=1:lengthX
        for jj=1:lengthX
            z1(ii,jj)=-sqrt(1-((x1(ii,jj)-k(1))/k(4))^2-((y1(ii,jj)-k(2))/k(5))^2)*k(6)+k(3);
        end
    end
    
end

