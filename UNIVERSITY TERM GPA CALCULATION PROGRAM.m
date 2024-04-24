num_courses=input('تعداد درس های این ترم را وارد کنید: ');
A = zeros(num_courses ,2);
for i = 1:num_courses
     GRADES = input(['نمرات مربوط به هر درس ترم را به ترتیب وارد کنید' ...
         'نمرات به صورت جدا وارد می شود پس توجه کنید که به تعداد درس های ترم پیام مشابه برای دریافت اطلاعات مشاهده می شود ' ...
     ,num2str(i),':   ']);
while isnan(GRADES) || GRADES<0 || GRADES>20
 disp('please enter a valid grade between 0 and 20.');
 GRADES = input(['نمرات مربوط به هر درس ترم را به ترتیب وارد کنید ،',num2str(i),':   ']);
end
A(i,1) = mean(GRADES);
units= input (['تعداد واحد مربوط به هر درس ترم را به ترتیب وارد کنید ' ...
    ,num2str(i),':   ']);
 while isnan(units) || GRADES<0 
   disp('please enter a valid number of unit that must be a positive number.');   
units= input (['تعداد واحد مربوط به هر درس ترم را به ترتیب وارد کنید ' ...
    ,num2str(i),':   ']);
 end
A(i,2) = units;
end
total_units = sum(A(i,2));
grade_point_average=sum(A(:,2).*A(:,2))/total_units;
disp('نمرات دریافتی و تعداد واحد هر درس ترم:  ');
disp(A);
disp(['تعداد واحد ها: ',num2str(total_units)]);
disp(['معدل ترم: ',num2str(grade_point_average)]);
