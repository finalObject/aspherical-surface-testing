% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017��4��1�� 17:45:01
% @version 1.0
% ���ݵ������ݻ�ȡ����
% ������ֻ��һ��sheet���������z�����ݣ�xy�Ǵ�-29.5~30.5���ȷֲ�
function [x,y,z]=getSurByPCD()
    %������̫���ˣ���λ�������̫��
    filePath='/Users/finalobject/Documents/asphericalSurfaceTesting/Z55.xlsx';
    startP = -29.5;
    endP = 30.5;
    
    
    z = xlsread(filePath,1);
    size = length(z);

    [x,y] = meshgrid(linspace(startP,endP,size));
    %mesh(x,y,z);
end