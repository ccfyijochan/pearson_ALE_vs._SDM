mask_image = which('GreyMask_02_91x109x91.img'); % read the Mask.
[imgdat, volInfo, cl] = extract_image_data(mask_image, mask_image); %extract the the number of voxel size;
cd C:\Users\zhang\Desktop\Pearson\input\FWE_correction
list1 = dir('*nii*');
data = zeros(length(imgdat),length(list1));
for i = 1:length(list1)    
    [imgdat, volInfo, cl] = extract_image_data(list1(i).name, mask_image);
    data(:,i) = imgdat'; 
end
cd ..
R1_FWE_correction = corr(data);
cd C:\Users\zhang\Desktop\Pearson\input\gad
list2 = dir('*nii*');
data = zeros(length(imgdat),length(list2));
for i = 1:length(list2)    
    [imgdat, volInfo, cl] = extract_image_data(list2(i).name, mask_image);
    data(:,i) = imgdat'; 
end
cd ..
R2_gad = corr(data);
cd C:\Users\zhang\Desktop\Pearson\input\gad_common_threshold
list3 = dir('*nii*');
data = zeros(length(imgdat),length(list3));
for i = 1:length(list3)    
    [imgdat, volInfo, cl] = extract_image_data(list3(i).name, mask_image);
    data(:,i) = imgdat'; 
end
cd ..
R3_gad_common_threshold = corr(data);
cd C:\Users\zhang\Desktop\Pearson\input\gad_exclude_no_peak_article
list4 = dir('*nii*');
data = zeros(length(imgdat),length(list4));
for i = 1:length(list4)    
    [imgdat, volInfo, cl] = extract_image_data(list4(i).name, mask_image);
    data(:,i) = imgdat'; 
end
cd ..
R4_gad_exclude_no_peak_article = corr(data);
cd including_vs_excluding_no_peak_articles
list5 = dir('*nii*');
data = zeros(length(imgdat),length(list5));
for i = 1:length(list5)    
    [imgdat, volInfo, cl] = extract_image_data(list5(i).name, mask_image);
    data(:,i) = imgdat'; 
end
cd ..
R5_including_vs_excluding_no_peak_articles = corr(data);
cd suicide
list6 = dir('*nii*');
data = zeros(length(imgdat),length(list6));
for i = 1:length(list6)    
    [imgdat, volInfo, cl] = extract_image_data(list6(i).name, mask_image);
    data(:,i) = imgdat'; 
end
cd ..
R6_suicide = corr(data);



