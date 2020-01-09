% manual mask selection
%
%
% note that the interpolation factor (Ni_Maps) should be such that the
% carbon image and the area it covers on the proton image have the same
% number of pixels.

temp = strfind(data_path,'/');
mask_path = data_path(1:temp(end-1));
mask_file = strcat(mask_path,'mask/mask_file',data_path(end-1:end),'.mat');

if ~exist(mask_file)
    figure(6534);
    imagesc(proton_cropped); colormap gray; axis square;
    title('select mask')
    
    fprintf('select the left lung\n');
    llmask = double(roipoly);
    
    fprintf('select the right lung\n');
    rlmask = double(roipoly);
    
    %mask = double(or(rlmask,llmask));
    mask = double(llmask); % modified by SMS for lung tx paper. just ignores right one
    
    
    mask(mask==0) = NaN;
    
    if ~exist([mask_path 'mask'],'dir')
        mkdir([mask_path 'mask']);
    end
    save(mask_file,'mask','llmask','rlmask');
else
    load(mask_file);
end

% temp added by SMS for loading edited masked for tx paper

custom_masks = 0
if custom_masks
    switch ll
        case 810
            mask = load([base_path 'data/lung_transplant/transplant_rat6/20160808_transplant_rat6_mri/mask/ltp_mask.mat']);
        case 811
            mask = load([base_path 'data/lung_transplant/transplant_rat6/20160812_transplant_rat6_mri/mask/ltp_mask.mat']);
        case 988 %rat 59 day use for day 3
            mask = load([base_path 'data/lung_transplant/transplant_rat59/20181212_transplant_rat59/mask/ltp_mask.mat']);
        case 969 % rat 49 day hella (using for normal )
            mask = load([base_path 'data/lung_transplant/transplant_rat49/20181212_transplant_rat49_mri/mask/ltp_int.mat']);
        case 881 % rat 17, day 7
            mask = load([base_path 'data/lung_transplant/transplant_rat17/20170411_transplant_rat17_mri/mask/ltp_mask.mat']);
        case 870 % rat 17, day 7
            mask = load([base_path 'data/lung_transplant/transplant_rat16/20170224_transplant_rat16_mri/mask/ltp_mask.mat']);
            
    end
    
    mask = mask(1).ltp_int;
end
