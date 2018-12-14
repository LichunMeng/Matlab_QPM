function [f_vec,psd_ave ] = Average_PSD_from_2dArray( T_array,A_array)
%AVERAGE_PSD_FROM_2DARRAY Summary of this function goes here
%   Detailed explanation goes here
[N_x N_y] = size(A_array);

for i = 1:N_x
    [ f PSD(i,:) ] = PSD_from_T_A( T_array(i,:),A_array(i,:) );
end

psd_ave=mean(PSD,1);
f_vec=f;
end
