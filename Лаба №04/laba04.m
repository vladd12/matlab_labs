%1) Кол-во символов в строке без учёта пробелов%
str = 'Иванов Константин 1981 3 4 3 4 3 5';
length = sum(str ~= ' ');
%2) Поменять местами первое и последнее слово%
r = regexp(str, ' ', 'split');
str2 = [r{2} ' ' r{1} ' ' r{3} ' ' r{4} ' ' r{5} ' ' r{6} ' ' r{7} ' ' r{8} ' ' r{9}];
disp(str2);
%3) Поменять цифры на слова%
str3 = strrep(str,'1','один');
str3 = strrep(str,'2','два');
str3 = strrep(str,'3','три');
str3 = strrep(str,'4','четыре');
str3 = strrep(str,'5','пять');
str3 = strrep(str,'6','шесть');
str3 = strrep(str,'7','семь');
str3 = strrep(str,'8','восемь');
str3 = strrep(str,'9','девять');
str3 = strrep(str,'0','ноль');
disp(str3);
%4) Массив чисел из строки%
digits = regexp(str, '[0-9]');
array = double(str(digits)')'-48;
disp(array);
%5) Запись текста в файл%
str1 = 'Иванов Константин 1981 3 4 3 4 3 5 \n';
str2 = "1 2 3 4 99 80 \n";
str3 = "5 6 7 8 33 21 \n";
str4 = "15 90";
f = fopen("In1.txt","wt+");
fprintf(f,str1);
fprintf(f,str2);
fprintf(f,str3);
fprintf(f,str4);
%6) Считывание векторов%
fgetl(f);
str2 = fgetl(f);
str3 = fgetl(f);
str4 = fgetl(f);
fclose(f);
%7) Создание html-файла отчёта%
clear
close all
clc
tic
File1NameExp='v01';
PictHigh1='400';
DirName1=['E:\Тексты\Универ\1 курс\Введение в профессию\Лаба 04\' File1NameExp];
if ~exist(DirName1)
 mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['lab4_' File1NameExp ' отчет.htm'],'wt');
 fprintf(FileHtml,'<HTML>\n');
 fprintf(FileHtml,'<head>\n');
 fprintf(FileHtml,'<title>Отчет по лабораторной работе № 4 \n');
 fprintf(FileHtml,'</title>\n');
 fprintf(FileHtml,'<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n');
 fprintf(FileHtml,'</head>\n');
 fprintf(FileHtml,'<body>\n');
 fprintf(FileHtml,'<center><H3>ОТЧЕТ<br>по лабораторной работе № 4</h3></center>\n');
 fprintf(FileHtml,'<h3>Задание</h3>\n'); 
 fprintf(FileHtml,'Написать файл-функцию для решения поставленной задачи.');
 fprintf(FileHtml,'<h3>Исходные данные</h3>\n');
 fprintf(FileHtml,'<br> Вариант-3');
 FileName000 = '01.png';
 FileName001 = '02.png';
 FileName002 = '03.png';
 fprintf(FileHtml,'<br><br> Нажмите на изоражение ниже, чтобы раскрыть листинг кода на полный экран \n');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<br><img src="'...
 FileName001 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<br><img src="'...
 FileName002 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
h1=figure('Name','Модельное изображение (исходное Image0)im3d');
hold on
x = 1:0.1:5;
y = sin(3*x);
plot(x,y,'-c.');
hold off
FileName000=[File1NameExp '_1.jpg'];
saveas(h1,FileName000);
 fprintf(FileHtml,'<br><br> Графики \n');
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,'</a>\n');
 fprintf(FileHtml,'</body>\n');
 fprintf(FileHtml,'</HTML>\n');
 fclose(FileHtml);
disp('Вычисления завершены');
toc