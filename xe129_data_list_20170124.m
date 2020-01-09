path = struct('name','','injection','');

computer_type = computer;
switch computer_type
    case 'GLNXA64'
        base_path = '/khazaddum/';
        %base_path = '/khazaddum/alanine/sarmad_upenn/';
    case 'MACI64'
        base_path = '/Volumes/sms_data/';
end


% des = description (basically title, name)


% %% RILI Rats
% 
% % Rat408_RILI
% path(4001).name = '/Users/mehipour/Library/Mobile Documents/com~apple~CloudDocs/Data/HUP-C data/20170123_rat408_radiation/s_2017012403/csi_13c_16x16_05';
% 
% %% Rat001_Xe
% path(4002).name = '/Users/mehipour/Library/Mobile Documents/com~apple~CloudDocs/Data/HUP-C data/20170130_rat001_xenon/s_2017013001/csi_13c_16x16_01';
% 
% %% Rat408_RILI
% path(4003).name = '/Users/mehipour/Library/Mobile Documents/com~apple~CloudDocs/Data/HUP-C data/20170123_rat408_radiation/s_2017012403/csi_13c_16x16_05';
% 
% %% Rat410_RILI
% path(4004).name = '/Users/mehipour/Library/Mobile Documents/com~apple~CloudDocs/Data/HUP-C data/20170210_rat410_radiation/s_2017021002/csi_129xe_16x16_02';
% 
% %% Rat405_RILI
% path(4005).name = '/Users/mehipour/Library/Mobile Documents/com~apple~CloudDocs/Data/HUP-C data/20170214_rat405_radiation/s_2017021402/csi_129xe_16x16_03';


%control rat 1

%path(1001).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_01']; %bad data
%path(1002).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_02']; %bad data

	%alpha = 90, coronal
path(1003).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_03'];
    % alpha = 90, axial
path(1004).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_04'];
    % alpha = 30, axial
path(1005).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_05'];
    % alpha = 30, coronal
path(1006).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_06'];
    % alpha = 90, coronal
path(1007).name = [base_path 'data/lung_transplant/control_ratT1/s_2018060501/csi_129xe_16x16_07'];

%control rat 2

    % alpha = 30, axial
path(1010).name = [base_path 'data/lung_transplant/control_ratT2/s_2018060801/csi_129xe_16x16_07'];
    % alpha = 30, coronal
path(1011).name = [base_path 'data/lung_transplant/control_ratT2/s_2018060801/csi_129xe_16x16_08'];
    % alpha = 90, coronal
path(1012).name = [base_path 'data/lung_transplant/control_ratT2/s_2018060801/csi_129xe_16x16_10'];
    % alpha = 90, axial
path(1013).name = [base_path 'data/lung_transplant/control_ratT2/s_2018060801/csi_129xe_16x16_11'];

%transplant rat 32

    % alpha = 30, axial. this is hella poor snr
path(1020).name = [base_path 'data/lung_transplant/transplant_rat32/20180608_xenon_mri_rat32/s_2018060802/csi_129xe_16x16_01'];
    % alpha = 90, axial
path(1021).name = [base_path 'data/lung_transplant/transplant_rat32/20180608_xenon_mri_rat32/s_2018060802/csi_129xe_16x16_02'];
    % alpha = 30, coronal
path(1022).name = [base_path 'data/lung_transplant/transplant_rat32/20180608_xenon_mri_rat32/s_2018060802/csi_129xe_16x16_03'];
    %alpha = 90, coronal
path(1023).name = [base_path 'data/lung_transplant/transplant_rat32/20180608_xenon_mri_rat32/s_2018060802/csi_129xe_16x16_04'];