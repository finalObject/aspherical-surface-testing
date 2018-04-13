% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��2�� 10:15:21
% @version 1.2
% ����������ȡ����ĺ������Ƚ����
% getSurByEquation�еĲ������ó�0.0545��ʱ�����ɵ�����ߴ��getSurByPCD��һ��
function [x,y,z] = getDiffInTwoWays( )
    [x1,y1,z1] = getSurByEquation(0.0545);
    [x2,y2,z2] = getSurByPCD(); 
    z=z1-z2;
    x=x1; 
    y=y1;
    figure;
    
    subplot(1,3,1);mesh(x1,y1,z1);title('Equation');
    subplot(1,3,2);mesh(x2,y2,z2);title('PCD');
    subplot(1,3,3);mesh(x,y,z);title('Error');


end

