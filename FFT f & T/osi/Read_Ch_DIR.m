function [ x_data,y_data,Filenames] = Read_Ch_DIR( DIR_str,CH_str )
listing=dir(DIR_str);
Filenames={listing.name};
CHnames = strmatch(CH_str,Filenames);
for i = 1:length(CHnames);
    FN=strcat(DIR_str,Filenames{CHnames(i)});
    [x_data(i,:),y_data(i,:)] = importfile_FPI(FN);
end
end

