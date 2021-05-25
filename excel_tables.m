T1 = readtable("fileExcel.xlsx","PreserveVariableNames",true);
T2 = table;
employers_names = join(T1.("ФИО")(find(T1.("Роль") == "Руководитель")),"; ");
employees_names = join(T1.("ФИО")(find(T1.("Роль") == "Исполнитель")),"; ");
people = [employers_names;employees_names];
roles = ["Руководитель"; "Исполнитель"];
T2.("Роли") = roles;
T2.("Люди") = people;
writetable(T2, "outFile.xlsx")

%%
T = readtable("Data_18032020.xlsx",'PreserveVariableNames',true,'TextType',"string")

age = fix(years((today('datetime') - T.("дата рождения"))));
T.("Возраст") = age;

id11_1 = T.("Публикация")(strlength(T.("id1")) == 11)
id11_2 = T.("Публикация")(strlength(T.("id2")) == 11)

k = T.("Кол-во авторов внутренних")./T.("Кол-во всего авторов");

value = zeros(31,1);
value((k > 0.5) & (k <= 1)) = 1;
value((k > 0.4) & (k <= 0.5)) = 0.8;
value((k > 0.3) & (k <= 0.4)) = 0.6;  
value((k > 0.2) & (k <= 0.3)) = 0.4;
value((k > 0.1) & (k <= 0.2)) = 0.2;
value((k > 0) & (k <= 0.1)) = 0.1;
   
T.("Значение") = value;

writetable(T,"newFile.xlsx")
