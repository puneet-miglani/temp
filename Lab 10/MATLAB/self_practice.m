clear all;
temp = dec2bin('Wolfgang');%out in char
temp = temp - '0';
name_in_bin = reshape(temp,1,[]);

%modulation

pulse_name = 2*name_in_bin-1;
res = 200;
mod_pulse = [];
for bit = 1:length(pulse_name) 
%for bit = pules_name    
    %if bit == -1
    if pulse_name(bit) == -1;
        mod_pulse = [mod_pulse -1*ones(1,res)];
    else
        mod_pulse = [mod_pulse ones(1,res)];
    end
end

t_stop = numel(name_in_bin) * res / 2;
bitrate = 2;
ts = 1/bitrate;
t = ts:ts:t_stop;


%%%%%plot the mod signal
figure(1);
plot(t,mod_pulse);
xlabel('time');
ylim([-2 2])





