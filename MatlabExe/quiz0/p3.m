clear all
clc

n = 1:1:50;
sum = 0;
for v = n
    sum = 1/sqrt(v) + sum
end

