clear all
Noise_Dir='M:\Documents\Experiment\Experiment log\ring cavity experiment\FFT 1064 & 635\March 09th 10 sweep averaging\noise_floor\';
Single_Dir='M:\Documents\Experiment\Experiment log\ring cavity experiment\FFT 1064 & 635\March 09th 10 sweep averaging\single longitudude\';
Multi_Dir='M:\Documents\Experiment\Experiment log\ring cavity experiment\FFT 1064 & 635\March 09th 10 sweep averaging\mulit longitudude\';
CH3 = 'C3';
CH4 = 'C4';
%%%Read data to 2d arrays
%%
[Noise_Ch3_Ts,Noise_Ch3_As]=Read_Ch_DIR(Noise_Dir,CH3);
[Noise_Ch4_Ts,Noise_Ch4_As]=Read_Ch_DIR(Noise_Dir,CH4);

[Single_Ch3_Ts,Single_Ch3_As]=Read_Ch_DIR(Single_Dir,CH3);
[Single_Ch4_Ts,Single_Ch4_As]=Read_Ch_DIR(Single_Dir,CH4);

[Multi_Ch3_Ts,Multi_Ch3_As]=Read_Ch_DIR(Multi_Dir,CH3);
[Multi_Ch4_Ts Multi_Ch4_As]=Read_Ch_DIR(Multi_Dir,CH4);
%%%averaing psd
%%
[f_noise_Ch4,psd_noise_Ch4 ] = Average_PSD_from_2dArray( Noise_Ch4_Ts,Noise_Ch4_As);
[f_noise_Ch3,psd_noise_Ch3 ] = Average_PSD_from_2dArray( Noise_Ch3_Ts,Noise_Ch3_As);

[f_Single_Ch4,psd_Single_Ch4 ] = Average_PSD_from_2dArray( Single_Ch4_Ts,Single_Ch4_As);
[f_Single_Ch3,psd_Single_Ch3 ] = Average_PSD_from_2dArray( Single_Ch3_Ts,Single_Ch3_As);

[f_Multi_Ch4,psd_Multi_Ch4 ] = Average_PSD_from_2dArray( Multi_Ch4_Ts,Multi_Ch4_As);
[f_Multi_Ch3,psd_Multi_Ch3 ] = Average_PSD_from_2dArray( Multi_Ch3_Ts,Multi_Ch3_As);
%%%ploting
%%
close all
NAME='1064nm';%%channel Ch3
figure( 'Name', NAME );
subplot(3,2,1)
plot(f_Single_Ch3/1e6,psd_Single_Ch3 );
legend( 'single lasing mode','Location', 'NorthEast' );
set(gca,'FontSize',28) %set the font size of everything, including the tick labels
xlhand = get(gca,'xlabel'); %make a handle for the x axis label
set(xlhand,'fontsize',35); %set the font size for the x axis label
ylhand = get(gca,'ylabel'); %make a handle for the y axis label
set(ylhand,'fontsize',35) %set the font size for the y axis label
%set(gca,'yscale','log')
% Label axes
ylabel('Amp (db)')
title('1064nm')
grid on
subplot(3,2,3)
plot(f_Multi_Ch3/1e6,psd_Multi_Ch3);
%ylim([0 0.8e-7])
legend('Multi lasing mode','Location', 'NorthEast' );
set(gca,'FontSize',28) %set the font size of everything, including the tick labels
xlhand = get(gca,'xlabel'); %make a handle for the x axis label
set(xlhand,'fontsize',35); %set the font size for the x axis label
ylhand = get(gca,'ylabel'); %make a handle for the y axis label
set(ylhand,'fontsize',35) %set the font size for the y axis label
%set(gca,'yscale','log')
% Label axes
ylabel('Amp (db)')
grid on



subplot(3,2,5)
plot(f_noise_Ch3/1e6,psd_noise_Ch3);

legend('Noise','Location', 'NorthEast' );
set(gca,'FontSize',28) %set the font size of everything, including the tick labels
xlhand = get(gca,'xlabel'); %make a handle for the x axis label
set(xlhand,'fontsize',35); %set the font size for the x axis label
ylhand = get(gca,'ylabel'); %make a handle for the y axis label
set(ylhand,'fontsize',35) %set the font size for the y axis label
%set(gca,'yscale','log')
% Label axes
xlabel('MHz')
ylabel('Amp (db)')



%%%635

subplot(3,2,2)
plot(f_Single_Ch4/1e6,psd_Single_Ch4 );
legend( 'single lasing mode','Location', 'NorthEast' );
set(gca,'FontSize',28) %set the font size of everything, including the tick labels
xlhand = get(gca,'xlabel'); %make a handle for the x axis label
set(xlhand,'fontsize',35); %set the font size for the x axis label
ylhand = get(gca,'ylabel'); %make a handle for the y axis label
set(ylhand,'fontsize',35) %set the font size for the y axis label
%set(gca,'yscale','log')
% Label axes
title('635nm')
grid on
subplot(3,2,4)
plot(f_Multi_Ch4/1e6,psd_Multi_Ch4);
%ylim([0 0.8e-7])
legend('Multi lasing mode','Location', 'NorthEast' );
set(gca,'FontSize',28) %set the font size of everything, including the tick labels
xlhand = get(gca,'xlabel'); %make a handle for the x axis label
set(xlhand,'fontsize',35); %set the font size for the x axis label
ylhand = get(gca,'ylabel'); %make a handle for the y axis label
set(ylhand,'fontsize',35) %set the font size for the y axis label
%set(gca,'yscale','log')
% Label axes
grid on



subplot(3,2,6)
plot(f_noise_Ch4/1e6,psd_noise_Ch4);

legend('Noise','Location', 'NorthEast' );
set(gca,'FontSize',28) %set the font size of everything, including the tick labels
xlhand = get(gca,'xlabel'); %make a handle for the x axis label
set(xlhand,'fontsize',35); %set the font size for the x axis label
ylhand = get(gca,'ylabel'); %make a handle for the y axis label
set(ylhand,'fontsize',35) %set the font size for the y axis label
%set(gca,'yscale','log')
% Label axes
xlabel('MHz')

