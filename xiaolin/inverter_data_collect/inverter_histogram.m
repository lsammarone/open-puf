run = 100;
vdd = 1.8;
delay = zeros(1,run);
for j = 1:run
    str = sprintf('inverter%d_out.txt',j)
    f = fopen(str);
    data = textscan(f,'%s')
    fclose(f);
    format longg
    
    str2 = sprintf('inverter%d_in.txt',j)
    f2 = fopen(str2);
    data2 = textscan(f2,'%s')
    fclose(f2);
    
    voltage = str2double(data{1}(2:2:end)); %second column
    l = length(voltage)
    index_halfvdd = 0;
    for i =1:l
        if voltage(i) <= vdd*0.5;
            index_halfvdd = i;
            break
        end
    end
    
    in = str2double(data2{1}(2:2:end)); %second column
    index_halfvin = 0;
    for n =1:l
        if in(n) >= vdd*0.5;
            index_halfvin = n;
            break
        end
    end
    
    disp(index_halfvdd)
    disp(index_halfvin)
    time = str2double(data{1}(1:2:end)); %first column
    delay(j) = time(index_halfvdd)-time(index_halfvin);
end
disp(delay)
hist(delay)
std(delay)
mean(delay)