function [ f PSD ] = PSD_from_T_A( Time,A_t )
%PSD_FROM_T_A Summary of this function goes here
%  this function is for PSD calculation from Time sequence and amplitude
% Time and A are data read from oscosocpe

%The unit of Time should be s,example: [0 0.002 0.004 0.006...]
%The unit of A is the voltage given by the detector


%%%dt calculation and test

dt_in_Time = diff(Time);
if max(dt_in_Time)-min(dt_in_Time)>1e-12
	msg='time interval in Time is not equal';
	error(msg);
end
N_sample_time = length(Time);
N_sample_A_t= length(A_t);
if N_sample_time~=N_sample_A_t
	msg='the length of Time and A are not equal';
	error(msg);
end
A_f = abs(fft(A_t));
df = 1/(dt_in_Time(1)*(N_sample_A_t-1));
f = 0:df:(df*floor((N_sample_A_t/2)-1));
PSD = A_f(1:floor((N_sample_A_t/2))).^2/((N_sample_A_t-1)*df);
PSD = 10*log(PSD);
end

