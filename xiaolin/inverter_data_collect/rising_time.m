run = 300;
vdd = 1.8;
delay = zeros(1,run);
for j = 1:run
    str = sprintf('inverter%d.txt',j)
    f = fopen(str);
    data = textscan(f,'%s')
    fclose(f);
    format longg
    voltage = str2double(data{1}(2:2:end)); %second column
    l = length(voltage)
    index_2 = 0;
    index_8 = 0;
    
    for i =1:l
        if voltage(i) >= vdd*0.2
            index_2 = i;
            break
        end
    end
    
    for m =1:l
        if voltage(m) >= vdd*0.8
            index_8 = m;
            break
        end
    end
    
    disp(index_2)
    disp(index_8)
    
    time = str2double(data{1}(1:2:end)); %first column
    delay(j)=time(index_8)-time(index_2);
end
disp(delay)
hist(delay)
std(delay)
mean(delay)
    