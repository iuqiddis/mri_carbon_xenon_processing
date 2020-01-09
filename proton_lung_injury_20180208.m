% proton_lung_injury_20160218()
%

clear h h1;
multislice_proton = 1;

%% read proton images

proton_image_path =  path(ll).proton;
nslice = path(ll).slc;

%% Open proton images
jj = 0; % reset file counter
file_h = dir(proton_image_path);
for ii = 1:numel(file_h)
    if ~isempty(strfind(file_h(ii).name,'slice'))
        jj = jj + 1;  % if the file name included 'slice'
        %         disp(file_h(ii).name)
        path1 = [proton_image_path file_h(ii).name];
        h(:,:,jj) = fdf2(path1);
        h1(:,:,1,jj) = h(:,:,jj);
    end
    %     save_figure('proton',proton_image_path,1,1,0)
end
figure(123);
montage(uint16(h1));
caxis([0 max(h1(:))/2]);

proton = h(:,:,nslice);
save_figure('proton_images',proton_image_path,1,1,0);



%% MP's old code below. Commented it out -SMS

% % chose the proper slice depending on the dataset.
% if ll <= 28
%     proton = h(:,:,6);
% elseif and(ll>=29,ll<=34)
%     proton = h(12:117,12:117,5);
% elseif and(ll>=35,ll<=37)
%     proton = h(6:122,6:122,4);
% elseif and(ll>=38,ll<=43)
%     proton = h(6:122,6:122,4);
% elseif and(ll>=60,ll<=62)
%     proton = h(37:224,37:224,6);
% else
%     if proton_sum_image
%         thk_13c = readprocpar(path(ll).name,'thk'); thk_13c = thk_13c(2);
%         if thk_13c == 15
%             proton = sum(h(:,:,nslice-3:nslice+3),3);
%         elseif thk_13c == 10
%             proton = sum(h(:,:,nslice-2:nslice+2),3);
%         end
%     else
%         proton = h(:,:,nslice);
%     end
%     
%     if and(ll>=63,ll <=65)
%         proton = fliplr(proton);
%     end
% end
% 
% 
% save_figure('proton_images',proton_image_path,1,1,0);



