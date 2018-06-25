function m = my_mat(var)
%var is 400*1-->20*20
for i=1:1:40
    m(:,i)=var((40*(i-1)+1):40*i);
end