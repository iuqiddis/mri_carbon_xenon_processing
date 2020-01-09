%% quanitfy_global_spectra_20170223


% find signal from the first spectrum acquired and scale the signal
gain = readprocpar(data_path, 'gain');
max_signal = sqrt(max(RE(:)).^2 + max(IM(:)).^2) / 2^(gain(2)/6);

% csi image with the non-normalized values
img1 = img*max_signal;

% Order of voxel selection: PL, PR, AL, AR, HR
reg = ['PL';'PR';'AL';'AR';'HR'];

% check if lung voxels exists.
temp = strfind(data_path,'/');
voxels_path = data_path(1:temp(end-1)); 
% voxels_file = strcat(voxels_path,'lung_voxels',data_path(end-1:end),'_',reg(mm,:),'.mat');
voxels_file = strcat(voxels_path,'lung_regional_voxels',data_path(end-1:end),'.mat');
lung_voxels = struct('dummy',0);

% check if voxels in the lungs hv already been selected
if ~exist(voxels_file)
    % select the voxels over the lungs 
    for mm = 1:5   % Region Loop
        fprintf('%s %s %s.....\n', 'select the',reg(mm,:),'area' )   
        if mrsi_voxel_selection
            if ~fov_match
    %             [Xl,Yl,Xp,Yp]=getspectra_click(img,proton(17:112,17:112),xgridshift,ygridshift);
                [Xl,Yl,Xp,Yp]=getspectra_click_20170313(img,proton_cropped,xgridshift,ygridshift);
            else
                [Xl,Yl,Xp,Yp]=getspectra_click_20170313(img,proton,xgridshift,ygridshift);
            end
            % if voxels are selected from the mrsi data then flip them.
            Yl = Nx-Yl+1;
            Xl = Nx-Xl+1;       
        else
            imagesc(pyr_img); axis square; colormap hot;
            [Xl,Yl] = getcarbonvoxel(pyr_img);
        end
        lung_voxels.(strcat('Xp',reg(mm,:))) = Xp;
        lung_voxels.(strcat('Yp',reg(mm,:))) = Yp;
        lung_voxels.(strcat('X',reg(mm,:))) = Xl;
        lung_voxels.(strcat('Y',reg(mm,:))) = Yl;
    end

    save(voxels_file,'lung_voxels');
    
    if save_fig
       save_figure(strcat('csi_masked_',data_path(end-1:end),'_',reg(mm,:)),voxels_path,1,1,0);
    end
else
    load(strcat(voxels_path,strcat('lung_regional_voxels',data_path(end-1:end),'.mat')));
end

%% Quantification
% quantify spectra in the lungs and heart.

Nf = size(img,3); % number of points in each spectrum.

% open a csv file to write the values in.

voxels_csv_file = strcat(voxels_path,'lung_regional_voxels',data_path(end-1:end),'.csv');

fid = fopen(voxels_csv_file,'w');
fprintf(fid,'%s,%s,%s, %s, %s, %s, %s, %s, %s, %s\n',...
    'organ','slice','side','No. of Voxels','Mean Lac','Std Lac','Mean Pyr','Std Pyr','Mean PD','STd PD');
fclose(fid);

% start the file for regional inidividual metabolites
individual_regional_voxels_csv_file = strcat(voxels_path,'individual_regional_voxels',data_path(end-1:end),'.csv');
fid = fopen(individual_regional_voxels_csv_file,'w');
fprintf(fid,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n',...
    'organ','slice','side','x','y','lac','pyr','ala','bic','mean proton','proton_std');
fclose(fid); 

% go through regions
for mm = 1:5
    
    % determine organ, slice and side
    
    switch mm
        case 1,
            organ = 'lungs';
            slice = 'p';
            side = 'l';
        case 2,
            organ = 'lungs';
            slice = 'p';
            side = 'r';
        case 3,
            organ = 'lungs';
            slice = 'a';
            side = 'l';
        case 4,
            organ = 'lungs';
            slice = 'a';
            side = 'r';
        case 5,
            organ = 'heart';
            slice = 'NA';
            side = 'NA';
    end
    
    
    % number of spectra in each section
    Nl = length(lung_voxels.(strcat('X',reg(mm,:)))); 
    [Nxl,Nyl]=select_subplot_number(Nl); % select proper layout
    
    % read voxel coordinants of the 13C image
    Xl = lung_voxels.(strcat('X',reg(mm,:)));
    Yl = lung_voxels.(strcat('Y',reg(mm,:)));
    
    % read voxel coordinants of the 1H image
    Xp = lung_voxels.(strcat('Xp',reg(mm,:)));
    Yp = lung_voxels.(strcat('Yp',reg(mm,:)));
  

    % plot individual spectra with indicies and create a mask over the lungs.
    mask_lungs = zeros(Nx,Ny,Nt); % initiate variables
    spec_lungs = zeros(Nf,Nl); 
    % Create masks and individual values of the metabolites. 
    for ii = 1:Nl
        spec_lungs(:,ii) = squeeze(img1(Nx-Yl(ii)+1,Ny-Xl(ii)+1,:));
        % create a 3D mask (a stack of 2D mask, all the same mask)
        mask_lungs(Yl(ii),Xl(ii),:) = 1;
        % Plot individual spectra
        if show_lung_spectra
            figure(253+mm);
            subplot(Nxl,Nyl,ii); plot(real(spec_lungs(:,ii)));
            title(strcat(reg(mm,:),',',num2str(Xl(ii)),',',num2str(Yl(ii))));
            drawnow();
        end
    end
    % save figures of the inidivual spectra
    if and(save_fig,show_lung_spectra)
        save_figure(strcat('lung_individual_spectra_',reg(mm,:)),[data_path '.fid/'],1,1,0)
    end
    
    % plot sum of spectra over the lungs (acount for the ones that are zero or not fitted)
    if show_lung_spectra
        figure(260+mm);
        sum_spec_lungs = squeeze(sum(sum(real(img1.*rot90(mask_lungs,2)),1),2))/Nl;
        plot(cs,sum_spec_lungs); 
        set(gca, 'xdir','reverse')
        title(strcat('sum of spectra in ',reg(mm,:)));
        xlabel('chemical shift');
    end

    % find invidual metabolite values in the selected voxels using the fit
    % if wanted.
    % if 
    if use_fits_to_quantify
        pyr_img = fliplr(rot90(squeeze(scaledimages(:,:,1))));
        bic_img = fliplr(rot90(squeeze(scaledimages(:,:,2))));
        ala_img = fliplr(rot90(squeeze(scaledimages(:,:,3))));
        lac_img = fliplr(rot90(squeeze(scaledimages(:,:,5))));
    end

    % create a 2D mask for quantification
    mask_lungs = squeeze(mask_lungs(:,:,1));
    % to use later to save in the structure
    regional_mask(:,:,mm) = mask_lungs;

    % makes sure that all selected voxels have postivie values
    lac = lac_img(:).*mask_lungs(:);
    pyr = pyr_img(:).*mask_lungs(:); pyr = pyr(lac>1e-5)';
    bic = bic_img(:).*mask_lungs(:); bic = bic(lac>1e-5)';
    ala = ala_img(:).*mask_lungs(:); ala = ala(lac>1e-5)';
    lac = lac(lac>1e-5)';
    num_vox = round(length(lac(lac>1e-5)'));

    % Save figure of the average spectrum
    if and(save_fig,show_lung_spectra)
        save_figure(strcat('lung_spectrum_',reg(mm,:)),[data_path '.fid/'],1,1,0)
    end

    % quantify lactate and pyruvate integrals in the lungs.
    mets.pyr.(reg(mm,:)) = pyr*max_signal;
    mets.lac.(reg(mm,:)) = lac*max_signal;
    mets.ala.(reg(mm,:)) = ala*max_signal;
    mets.bic.(reg(mm,:)) = bic*max_signal;
    mets.lac2pyr.(reg(mm,:)) = lac./pyr;
    mets.numberofvoxels.(reg(mm,:)) = num_vox;
    
    
    % quanitfy proton images
    if ~fov_match
        proton1 = proton_cropped;
    else
        proton1 = proton;
    end
    [nx,ny] = size(proton1);
    % line up all the proton voxels
    proton_voxels = [];
    
    % saves mean of proton signal and std over each voxel and each region
    for pp = 1:num_vox;
        dum = proton1(ny-Yp(2,pp)+1:ny-Yp(1,pp)+1,Xp(1,pp):Xp(2,pp));
        proton_individual_voxels_mean(pp) = mean(dum(:));
        proton_individual_voxels_std(pp) = std(dum(:));
        proton_voxels = [proton_voxels; dum(:)]; 
    end
    mets.pd.(reg(mm,:)) = proton_voxels;
    
    % save individual voxels
    for ii = 1:num_vox      
        fid = fopen(individual_regional_voxels_csv_file,'a');
        fprintf(fid,'%s,%s,%s,%1.0f,%1.0f, %4.4f, %4.4f, %4.4f,%4.4f,%4.4f,%4.4f\n',...
            organ,slice,side,Xl(ii),Yl(ii),mets.lac.(reg(mm,:))(ii),...
            mets.pyr.(reg(mm,:))(ii),mets.ala.(reg(mm,:))(ii),...
            mets.bic.(reg(mm,:))(ii),proton_individual_voxels_mean(ii),...
            proton_individual_voxels_std(ii));
        fclose(fid); 
    end
    % clear for the next round
    clear proton_individual_voxels_mean proton_individual_voxels_std;  
 
    fprintf('%s %s %s.....\n\n', 'Show the values for the',reg(mm,:),'area:');
    
    fprintf('Voxles   Lac/Pyr     Ala/Pyr      Bic/Pyr     Bic/Lac     Lac/Ala \n');
    fprintf('%2.0f       %4.4f     %4.4f      %4.4f     %4.4f     %4.4f\n\n',...
        Nl,mean(lac./pyr), mean(ala./pyr), mean(bic./pyr), mean(bic./lac), mean(lac./ala));

    fprintf('Voxles   Lactate     Pyruvate     Alanine     Bicarbonate \n');
    fprintf('%2.0f       %4.4f      %4.4f      %4.4f     %4.4f\n\n',...
        Nl,mean(lac)*max_signal, mean(pyr)*max_signal,...
        mean(ala)*max_signal, mean(bic)*max_signal);

    fprintf('Voxles   Lac_Std     Pyr_Std      Ala_Std     Bic_Std \n');
    fprintf('%2.0f       %4.4f      %4.4f       %4.4f      %4.4f\n\n',...
        Nl,std(lac)*max_signal, std(pyr)*max_signal,...
        std(ala)*max_signal, std(bic)*max_signal);
    
    % Write to a CSV file
    fid = fopen(voxels_csv_file,'a');
    fprintf(fid,'%s,%s,%s,%2.0f, %4.4f, %4.4f, %4.4f, %4.4f, %4.4f, %4.4f\n',organ,slice,side,...
        num_vox,mean(lac)*max_signal,std(lac)*max_signal,...
        mean(pyr)*max_signal,std(pyr)*max_signal,mean(proton_voxels),std(proton_voxels));
    fclose(fid); 
end

