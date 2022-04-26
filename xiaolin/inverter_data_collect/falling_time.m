run = 300;
vdd = 1.8;
delay = zeros(1,run);
for j = 1:run
    str = sprintf('inverter_fall%d.txt',j)
    f = fopen(str);
    data = textscan(f,'%s')
    fclose(f);
    format longg
    voltage = str2double(data{1}(2:2:end)); %second column
    l = length(voltage)
    index_8 = 0;
    index_2 = 0;
    
    for i =1:l
        if voltage(i) <= vdd*0.8
            index_8 = i;
            break
        end
    end
    
    for m =1:l
        if voltage(m) <= vdd*0.2
            index_2 = m;
            break
        end
    end
    
    disp(index_8)
    disp(index_2)
    
    time = str2double(data{1}(1:2:end)); %first column
    delay(j)=time(index_2)-time(index_8);
end
disp(delay)
hist(delay)
std(delay)
mean(delay)
    