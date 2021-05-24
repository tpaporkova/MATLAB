T1 = readtable("fileExcel.xlsx","PreserveVariableNames",true);
Roles = ["Руководитель"; "Исполнитель"];
employers_names = join(T1.("ФИО")(find(T1.("Роль") == "Руководитель")),"; ");
employees_names = join(T1.("ФИО")(find(T1.("Роль") == "Исполнитель")),"; ");
People = [employers_names;employees_names];
T2 = table(Roles, People);
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
