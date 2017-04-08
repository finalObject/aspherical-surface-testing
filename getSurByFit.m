% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��8�� 9:48:22
% @version 0.1
% ͨ����ϳ��������������ؽ�����
function [ x1,y1,z1 ] = getSurByFit( k ,side)
    % k(1)=x1;
    % k(2)=y1;
    % k(3)=z1;
    % k(4)=a;
    % k(5)=b;
    % k(6)=c;
    % side����ͼ�������ݵı߳������ص�xyz������side*side
    startP = -29.5;
    endP = 30.5;
    [x1,y1] = meshgrid(linspace(startP,endP,side));
    z1 = zeros(side,side);
    for ii=1:side
        for jj=1:side
            z1(ii,jj)=-sqrt(1-((x1(ii,jj)-k(1))/k(4))^2-((y1(ii,jj)-k(2))/k(5))^2)*k(6)+k(3);
        end
    end
    
end

