%1) ���-�� �������� � ������ ��� ����� ��������%
str = '������ ���������� 1981 3 4 3 4 3 5';
length = sum(str ~= ' ');
%2) �������� ������� ������ � ��������� �����%
r = regexp(str, ' ', 'split');
str2 = [r{2} ' ' r{1} ' ' r{3} ' ' r{4} ' ' r{5} ' ' r{6} ' ' r{7} ' ' r{8} ' ' r{9}];
disp(str2);
%3) �������� ����� �� �����%
str3 = strrep(str,'1','����');
str3 = strrep(str,'2','���');
str3 = strrep(str,'3','���');
str3 = strrep(str,'4','������');
str3 = strrep(str,'5','����');
str3 = strrep(str,'6','�����');
str3 = strrep(str,'7','����');
str3 = strrep(str,'8','������');
str3 = strrep(str,'9','������');
str3 = strrep(str,'0','����');
disp(str3);
%4) ������ ����� �� ������%
digits = regexp(str, '[0-9]');
array = double(str(digits)')'-48;
disp(array);
%5) ������ ������ � ����%
str1 = '������ ���������� 1981 3 4 3 4 3 5 \n';
str2 = "1 2 3 4 99 80 \n";
str3 = "5 6 7 8 33 21 \n";
str4 = "15 90";
f = fopen("In1.txt","wt+");
fprintf(f,str1);
fprintf(f,str2);
fprintf(f,str3);
fprintf(f,str4);
%6) ���������� ��������%
fgetl(f);
str2 = fgetl(f);
str3 = fgetl(f);
str4 = fgetl(f);
fclose(f);
%7) �������� html-����� ������%
clear
close all
clc
tic
File1NameExp='v01';
PictHigh1='400';
DirName1=['E:\������\������\1 ����\�������� � ���������\���� 04\' File1NameExp];
if ~exist(DirName1)
 mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['lab4_' File1NameExp ' �����.htm'],'wt');
 fprintf(FileHtml,'<HTML>\n');
 fprintf(FileHtml,'<head>\n');
 fprintf(FileHtml,'<title>����� �� ������������ ������ � 4 \n');
 fprintf(FileHtml,'</title>\n');
 fprintf(FileHtml,'<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n');
 fprintf(FileHtml,'</head>\n');
 fprintf(FileHtml,'<body>\n');
 fprintf(FileHtml,'<center><H3>�����<br>�� ������������ ������ � 4</h3></center>\n');
 fprintf(FileHtml,'<h3>�������</h3>\n'); 
 fprintf(FileHtml,'�������� ����-������� ��� ������� ������������ ������.');
 fprintf(FileHtml,'<h3>�������� ������</h3>\n');
 fprintf(FileHtml,'<br> �������-3');
 FileName000 = '01.png';
 FileName001 = '02.png';
 FileName002 = '03.png';
 fprintf(FileHtml,'<br><br> ������� �� ���������� ����, ����� �������� ������� ���� �� ������ ����� \n');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<br><img src="'...
 FileName001 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<br><img src="'...
 FileName002 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
h1=figure('Name','��������� ����������� (�������� Image0)im3d');
hold on
x = 1:0.1:5;
y = sin(3*x);
plot(x,y,'-c.');
hold off
FileName000=[File1NameExp '_1.jpg'];
saveas(h1,FileName000);
 fprintf(FileHtml,'<br><br> ������� \n');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
 fprintf(FileHtml,'</body>\n');
 fprintf(FileHtml,'</HTML>\n');
 fclose(FileHtml);
disp('���������� ���������');
toc