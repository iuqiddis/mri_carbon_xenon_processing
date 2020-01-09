% find_FOVs_and_crop_proton_image
%% Created - on 2/23/2016
%

x_c13 = readprocpar(data_path,'lpe'); x_c13 = x_c13(2);
y_c13 = readprocpar(data_path,'lpe2'); y_c13 = y_c13(2);

if show_proton
    x_h1 = readprocpar(proton_image_path(1:end-5),'lro'); x_h1 = x_h1(2);
    y_h1 = readprocpar(proton_image_path(1:end-5),'lpe'); y_h1 = y_h1(2);
    fov_match = 0;
    if and(x_c13 == x_h1,y_c13 == y_h1)
        fov_match = 1;
    end 
    [Nx_h1,Ny_h1] = size(proton);
    xx = floor(Nx_h1*(1-x_c13/y_h1)/2)+1:ceil(Nx_h1*(1+x_c13/y_h1)/2);
    yy = floor(Ny_h1*(1-y_c13/y_h1)/2)+1:ceil(Ny_h1*(1+y_c13/y_h1)/2);        
    proton_cropped = proton(xx,yy);
else
    xx = 1:128;
    yy = 1:128;
    fov_match = 1;
end

 
