
grades = input('Enter grades as a vector: ');

if ~isvector(grades)
    error('Input must be a vector');
end


num_grades = length(grades);


for i = 1:num_grades
    if grades(i) < 5
        grades(i) = 9;
    elseif grades(i) >= 5 && grades(i) <= 8
        grades(i) = 9.5;
    elseif grades(i) > 8 && grades(i) <= 10
        grades(i) = 10;
    elseif grades(i) > 10 && grades(i) <= 15
        grades(i) = grades(i) + 1;
    elseif grades(i) > 15 && grades(i) < 20
        grades(i) = grades(i) + 0.5;
    end
end

disp('Modified grades:');
disp(grades);