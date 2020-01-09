
switching_computers();

% template for starting
% path().name = [base_path ''];
% path().proton = [base_path ''];
% path().slc =

%Lung Transplants

%control rat 1: only xenon imaging done
%control rat 2: only xenon imaging done


% rat bn1, brown norway, healthy control
path(1).name = [base_path 'data/lung_transplant/transplant_bn1/20181113_transplant_rat_bn1/s_2018111301/csi_13c_16x16_02'];
path(1).proton = [base_path 'data/lung_transplant/transplant_bn1/20181113_transplant_rat_bn1/s_2018111301/axial_pd_rat_01.img/'];
path(1).slc = 10;

% rat bn2, brown norway, healthy control
path(2).name = [base_path 'data/lung_transplant/transplant_bn2/20181113_transplant_rat_bn2/s_2018111302/csi_13c_16x16_02'];
path(2).proton = [base_path 'data/lung_transplant/transplant_bn2/20181113_transplant_rat_bn2/s_2018111302/axial_pd_rat_01.img/'];
path(2).slc = 10;

% rat bn2, brown norway, healthy control
path(3).name = [base_path 'data/lung_transplant/transplant_bn2/20181113_transplant_rat_bn2/s_2018111302/csi_13c_16x16_04'];
path(3).proton = [base_path '/data/lung_transplant/transplant_bn2/20181113_transplant_rat_bn2/s_2018111302/axial_pd_rat_01.img/'];
path(3).slc = 10;


%rat 3, allo
path(1).name = [base_path 'data/lung_transplant/transplant_rat3/20160408_transplant_rat3_mri/s_2016040802/csi_13c_16x16_06_temp'];
path(1).proton = [base_path 'data/lung_transplant/transplant_rat3/20160408_transplant_rat3_mri/s_2016040802/axial_pd_rat_01.img/' ];
path(1).slc = 8;

path(2).name = [base_path 'data/lung_transplant/transplant_rat3/20160412_transplant_rat3_mri/s_2016041201/csi_13c_16x16_04'];
path(2).proton = [base_path 'data/lung_transplant/transplant_rat3/20160412_transplant_rat3_mri/s_2016041201/axial_pd_rat_01.img/' ];
path(2).slc = 13;

%rat 4 (?)
path(3).name = [base_path 'data/lung_transplant/transplant_rat4/20160616_transplant_rat4_mri/s_2016061601/csi_13c_16x16_02'];

%rat 5, (?)
path(4).name = [base_path 'data/lung_transplant/transplant_rat5/20160803_transplant_rat5_mri/s_2016080301/csi_13c_16x16_04'];
% path().proton = [base_path '/data/lung_transplant/transplant_rat5/20160803_transplant_rat5_mri/s_2016080301/axial_pd_rat_01.img/' ];
% path().slc = 8;
path(4).proton = [base_path 'data/lung_transplant/transplant_rat5/20160803_transplant_rat5_mri/s_2016080301/axial_ssfp_fid_01.img/' ];
path(4).slc = 5;

path(5).name = [base_path 'data/lung_transplant/transplant_rat5/20160825_transplant_rat5_mri/s_2016082502/csi_13c_16x16_04'];
path(5).proton = [base_path 'data/lung_transplant/transplant_rat5/20160825_transplant_rat5_mri/s_2016082502/fse_t2_01.img/' ];
path(5).slc = 8;

%rat 6, syn
path(6).name = [base_path 'data/lung_transplant/transplant_rat6/20160808_transplant_rat6_mri/s_2016080801/csi_13c_16x16_04'];
path(6).proton = [base_path 'data/lung_transplant/transplant_rat6/20160808_transplant_rat6_mri/s_2016080801/axial_pd_rat_01.img/' ];
path(6).slc = 9;

path(7).name = [base_path 'data/lung_transplant/transplant_rat6/20160812_transplant_rat6_mri/s_2016081201/csi_13c_16x16_03'];
path(7).proton = [base_path 'data/lung_transplant/transplant_rat6/20160812_transplant_rat6_mri/s_2016081201/axial_pd_rat_01.img/' ];
path(7).slc = 8;

path(8).name = [base_path 'data/lung_transplant/transplant_rat6/20160825_transplant_rat6_mri/s_2016082501/csi_13c_16x16_03'];
path(8).proton = [base_path 'data/lung_transplant/transplant_rat6/20160825_transplant_rat6_mri/s_2016082501/axial_pd_rat_01.img/' ];
path(8).slc = 9;

path(9).name = [base_path 'data/lung_transplant/transplant_rat6/20161128_transplant_rat6_mri/s_2016112802/csi_13c_16x16_10'];
path(9).proton = [base_path 'data/lung_transplant/transplant_rat6/20161128_transplant_rat6_mri/s_2016112802/axial_pd_rat_01.img/' ];
path(9).slc = 9;

%rat 7, syn, collapsed
path(10).name = [base_path 'data/lung_transplant/transplant_rat7/20160826_transplant_rat7_mri/s_2016082601/csi_13c_16x16_03'];
path(10).proton = [base_path 'data/lung_transplant/transplant_rat7/20160826_transplant_rat7_mri/s_2016082601/axial_pd_rat_01.img/' ];
path(10).slc = 10;

path(11).name = [base_path 'data/lung_transplant/transplant_rat7/20160830_transplant_rat7_mri/s_2016083001/csi_13c_16x16_03'];
path(11).proton = [base_path 'data/lung_transplant/transplant_rat7/20160830_transplant_rat7_mri/s_2016083001/axial_ssfp_fid_01.img/' ];
path(11).slc = 7;

path(12).name = [base_path 'data/lung_transplant/transplant_rat7/20160907_transplant_rat7_mri/s_2016090701/csi_13c_16x16_04'];
path(12).proton = [base_path 'data/lung_transplant/transplant_rat7/20160907_transplant_rat7_mri/s_2016090701/axial_pd_rat_01.img/' ];
path(12).slc = 9;

path(13).name = [base_path 'data/lung_transplant/transplant_rat7/20161130_transplant_rat7_mri/s_2016113002/csi_13c_16x16_06'];
path(13).proton = [base_path 'data/lung_transplant/transplant_rat7/20161130_transplant_rat7_mri/s_2016113002/axial_pd_rat_01.img/' ];
path(13).slc = 9; %not checked

%rat 11, syn
path(14).name = [base_path 'data/lung_transplant/transplant_rat11/20161208_transplant_rat11_mri/s_2016120802/csi_13c_16x16_03'];
%path(14).proton = [base_path 'data/lung_transplant/transplant_rat11/20161208_transplant_rat11_mri/s_2016120802/axial_pd_rat_01.img/' ];
path(14).proton = [base_path 'data/lung_transplant/transplant_rat11/20161208_transplant_rat11_mri/s_2016120802/axial_ssfp_fid_01.img/'];
path(14).slc = 7; %9 for PD image

path(15).name = [base_path 'data/lung_transplant/transplant_rat11/20161212_transplant_rat11_mri/s_2016121202/csi_13c_16x16_05'];
path(15).proton = [base_path 'data/lung_transplant/transplant_rat11/20161212_transplant_rat11_mri/s_2016121202/axial_pd_rat_01.img/' ];
path(15).slc = 8;

path(16).name = [base_path 'data/lung_transplant/transplant_rat11/20161219_transplant_rat11_mri/s_2016121901/csi_13c_16x16_03'];
path(16).proton = [base_path 'data/lung_transplant/transplant_rat11/20161219_transplant_rat11_mri/s_2016121901/axial_pd_rat_01.img/' ];
path(16).slc = 9;

path(17).name = [base_path 'data/lung_transplant/transplant_rat11/20170130_transplant_rat11_mri/s_2017013002/csi_13c_16x16_05'];
path(17).proton = [base_path '/' ];
path(17).slc = 9;

%rat 13, syn
path(18).name = [base_path 'data/lung_transplant/transplant_rat13/20170127_transplant_rat13_mri/s_2017012701/csi_13c_16x16_05'];
path(18).proton = [base_path 'data/lung_transplant/transplant_rat13/20170127_transplant_rat13_mri/s_2017012701/axial_ssfp_fid_01.img/' ];
% path(18).proton = [base_path 'data/lung_transplant/transplant_rat13/20170127_transplant_rat13_mri/s_2017012701/axial_pd_rat_01.img/' ];
path(18).slc = 6; %9 for pd

path(19).name = [base_path 'data/lung_transplant/transplant_rat13/20170131_transplant_rat13_mri/s_2017013101/csi_13c_16x16_03'];
path(19).proton = [base_path 'data/lung_transplant/transplant_rat13/20170131_transplant_rat13_mri/s_2017013101/axial_pd_rat_01.img/' ];
path(19).slc = 8;

path(20).name = [base_path 'data/lung_transplant/transplant_rat13/20170207_transplant_rat13_mri/s_2017020701/csi_13c_16x16_02'];
path(20).proton = [base_path 'data/lung_transplant/transplant_rat13/20170207_transplant_rat13_mri/s_2017020701/axial_pd_rat_01.img/' ];
path(20).slc = 9;

path(21).name = [base_path 'data/lung_transplant/transplant_rat13/20170208_transplant_rat13_mri/s_2017020801/csi_13c_16x16_02'];
% path(21).proton = [base_path 'data/lung_transplant/transplant_rat13/20170208_transplant_rat13_mri/s_2017020801/axial_pd_rat_01.img/' ];
% path(21).slc = 11;
path(21).proton = [base_path 'data/lung_transplant/transplant_rat13/20170208_transplant_rat13_mri/s_2017020801/axial_ssfp_fid_01.img/' ];
path(21).slc = 6;

path(22).name = [base_path 'data/lung_transplant/transplant_rat13/20170301_transplant_rat13_mri/s_2017030101/csi_13c_16x16_02'];


%rat 14, syn, collapsed
path(23).name = [base_path 'data/lung_transplant/transplant_rat14/20170217_transplant_rat14_mri/s_2017021701/csi_13c_16x16_02'];
path(23).proton = [base_path 'data/lung_transplant/transplant_rat14/20170217_transplant_rat14_mri/s_2017021701/axial_pd_rat_01.img/' ];
path(23).slc = 7;

%rat 15, syn, collapsed
path(24).name = [base_path 'data/lung_transplant/transplant_rat15/20170225_transplant_rat15_mri/s_2017022501/csi_13c_16x16_02'];
path(24).proton = [base_path 'data/lung_transplant/transplant_rat15/20170225_transplant_rat15_mri/s_2017022501/axial_pd_rat_01.img/' ];
path(24).slc = 5;

%rat 16, syn
path(25).name = [base_path 'data/lung_transplant/transplant_rat16/20170224_transplant_rat16_mri/s_2017022401/csi_13c_16x16_02'];
%path(25).proton = [base_path 'data/lung_transplant/transplant_rat16/20170224_transplant_rat16_mri/s_2017022401/axial_pd_rat_01.img/' ];
path(25).proton = [base_path 'data/lung_transplant/transplant_rat16/20170224_transplant_rat16_mri/s_2017022401/axial_ssfp_fid_01.img/'];
path(25).slc = 6; %10 for gre image, 6 for ssfp

path(26).name = [base_path 'data/lung_transplant/transplant_rat16/20170228_transplant_rat16_mri/s_2017022804/csi_13c_16x16_02'];
path(26).proton = [base_path 'data/lung_transplant/transplant_rat16/20170228_transplant_rat16_mri/s_2017022804/axial_pd_rat_01.img/' ];
path(26).slc = 10;

path(27).name = [base_path 'data/lung_transplant/transplant_rat16/20170307_transplant_rat16_mri/s_2017030702/csi_13c_16x16_03'];
%path(27).proton = [base_path 'data/lung_transplant/transplant_rat16/20170307_transplant_rat16_mri/s_2017030702/axial_pd_rat_01.img/' ];
path(27).proton = [base_path 'data/lung_transplant/transplant_rat16/20170307_transplant_rat16_mri/s_2017030702/axial_ssfp_fid_01.img/'];
path(27).slc = 6; % 6 for ssfp, 10 for gre

path(28).name = [base_path 'data/lung_transplant/transplant_rat16/20170323_transplant_rat16_mri/s_2017032301/csi_13c_16x16_02'];


%rat 17, allo
path(29).name = [base_path 'data/lung_transplant/transplant_rat17/20170407_transplant_rat17_mri/s_2017040701/csi_13c_16x16_02'];
path(29).proton = [base_path 'data/lung_transplant/transplant_rat17/20170407_transplant_rat17_mri/s_2017040701/axial_pd_rat_01.img/' ];
path(29).slc = 12;

path(30).name = [base_path 'data/lung_transplant/transplant_rat17/20170411_transplant_rat17_mri/s_2017041101/csi_13c_16x16_02'];
path(30).proton = [base_path 'data/lung_transplant/transplant_rat17/20170411_transplant_rat17_mri/s_2017041101/axial_ssfp_fid_01.img/' ];
path(30).slc = 5; %used 6 for data extraction, 5 for masking

path(31).name = [base_path 'data/lung_transplant/transplant_rat17/20170418_transplant_rat17_mri/s_2017041801/csi_13c_16x16_03'];
path(31).proton = [base_path 'data/lung_transplant/transplant_rat17/20170418_transplant_rat17_mri/s_2017041801/axial_ssfp_fid_01.img/' ];
path(31).slc = 7;

%rat 20
% 32 was bad acquisition (no signal)
path(32).name = [base_path 'data/lung_transplant/transplant_rat20/20170511_transplant_rat20_mri/s_2017051101/csi_13c_16x16_08'];

path(33).name = [base_path 'data/lung_transplant/transplant_rat20/20170512_transplant_rat20_mri/s_2017051201/csi_13c_16x16_16'];
path(33).proton = [base_path 'data/lung_transplant/transplant_rat20/20170512_transplant_rat20_mri/s_2017051201/axial_pd_rat_01.img/' ];
path(33).slc = 11; %9 is more conservative

path(34).name = [base_path 'data/lung_transplant/transplant_rat20/20170515_transplant_rat20_mri/s_2017051501/csi_13c_16x16_03'];
path(34).proton = [base_path 'data/lung_transplant/transplant_rat20/20170515_transplant_rat20_mri/s_2017051501/axial_pd_rat_01.img/' ];
path(34).slc = 10;

path(35).name = [base_path 'data/lung_transplant/transplant_rat20/20170525_transplant_rat20_mri/s_2017052501/csi_13c_16x16_01'];
path(35).proton = [base_path 'data/lung_transplant/transplant_rat20/20170525_transplant_rat20_mri/s_2017052501/axial_pd_rat_01.img/' ];
path(35).slc = 12;

path(36).name = [base_path 'data/lung_transplant/transplant_rat20/20170526_transplant_rat20_mri/s_2017052601/csi_13c_16x16_03'];
path(36).proton = [base_path 'data/lung_transplant/transplant_rat20/20170526_transplant_rat20_mri/s_2017052601/axial_pd_rat_01.img/' ];
path(36).slc = 11;

%rat WL1, allo
path(37).name = [base_path 'data/lung_transplant/transplant_ratWL1/20170227_transplant_ratWL1_mri/s_2017022702/csi_13c_16x16_02'];
path(37).proton = [base_path 'data/lung_transplant/transplant_ratWL1/20170227_transplant_ratWL1_mri/s_2017022702/axial_pd_rat_04.img/' ];
path(37).slc = 7;

%rat WL2, allo
path(38).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170302_transplant_ratWL2_mri/s_2017030201/csi_13c_16x16_02'];
path(38).proton = [base_path 'data/lung_transplant/transplant_ratWL2/20170302_transplant_ratWL2_mri/s_2017030201/axial_pd_rat_01.img/' ];
path(38).slc = 9;

path(39).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170306_transplant_ratWL2_mri/s_2017030602/csi_13c_16x16_02'];
path(39).proton = [base_path 'data/lung_transplant/transplant_ratWL2/20170306_transplant_ratWL2_mri/s_2017030602/axial_pd_rat_01.img/' ];
path(39).slc = 10;

path(40).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170313_transplant_ratWL2_mri/s_2017031302/csi_13c_16x16_06'];
path(40).proton = [base_path 'data/lung_transplant/transplant_ratWL2/20170313_transplant_ratWL2_mri/s_2017031302/axial_pd_rat_01.img/' ];
path(40).slc = 12;

path(41).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170331_transplant_ratWL2_mri/s_2017033101/csi_13c_16x16_04'];

%rat 23
path(42).name = [base_path 'data/lung_transplant/transplant_rat23/20170612_transplant_rat23_mri/s_2017061201/csi_13c_16x16_04'];
path(42).proton = [base_path 'data/lung_transplant/transplant_rat23/20170622_transplant_rat23_mri/s_2017062201/axial_pd_rat_01.img/' ];
path(42).slc = 9;

path(43).name = [base_path 'data/lung_transplant/transplant_rat23/20170615_transplant_rat23_mri/s_2017061501/csi_13c_16x16_02'];
%path(43).proton = [base_path 'data/lung_transplant/transplant_rat23/20170615_transplant_rat23_mri/s_2017061501/axial_pd_rat_01.img/' ];
path(43).proton = [base_path 'data/lung_transplant/transplant_rat23/20170615_transplant_rat23_mri/s_2017061501/axial_ssfp_fid_01.img/'];
path(43).slc = 7; % 11 for gre, 7 for ssfp

path(44).name = [base_path 'data/lung_transplant/transplant_rat23/20170622_transplant_rat23_mri/s_2017062201/csi_13c_16x16_03'];
path(44).proton = [base_path 'data/lung_transplant/transplant_rat23/20170622_transplant_rat23_mri/s_2017062201/axial_pd_rat_01.img/' ];
path(44).slc = 10;

%rat 43, allo, L->W
path(45).name = [base_path 'data/lung_transplant/transplant_rat43/20180817_transplant_rat43/s_2018081701/csi_13c_16x16_03'];
path(45).proton = [base_path 'data/lung_transplant/transplant_rat43/20180817_transplant_rat43/s_2018081701/axial_pd_rat_03.img/' ];
path(45).slc = 8;

path(46).name = [base_path 'data/lung_transplant/transplant_rat43/20180822_transplant_rat43/s_2018082201/csi_13c_16x16_05'];
% path(46).proton = [base_path 'data/lung_transplant/transplant_rat43/20180822_transplant_rat43/s_2018082201/axial_ssfp_fid_01.img/' ];
% path(46).slc = 8;
path(46).proton = [base_path 'data/lung_transplant/transplant_rat43/20180822_transplant_rat43/s_2018082201/axial_t1_gre_01.img/' ];
path(46).slc = 10;

%rat 44, syn, L->L (inbred)
path(47).name = [base_path 'data/lung_transplant/transplant_rat44/20180818_transplant_rat44/s_2018081801/csi_13c_16x16_02'];
path(47).proton = [base_path 'data/lung_transplant/transplant_rat44/20180818_transplant_rat44/s_2018081801/axial_t1_gre_01.img/' ];
path(47).slc = 10;

path(48).name = [base_path 'data/lung_transplant/transplant_rat44/20180822_transplant_rat44/s_2018082202/csi_13c_16x16_02'];
path(48).proton = [base_path 'data/lung_transplant/transplant_rat44/20180822_transplant_rat44/s_2018082202/axial_t1_gre_01.img/' ];
path(48).slc = 9;

%rat 45, allo, L->W
path(49).name = [base_path 'data/lung_transplant/transplant_rat45/20180826_transplant_rat45_mri/s_2018082601/csi_13c_16x16_04'];
path(49).proton = [base_path 'data/lung_transplant/transplant_rat45/20180826_transplant_rat45_mri/s_2018082601/axial_t1_gre_01.img/' ];
path(49).slc = 7;

path(50).name = [base_path 'data/lung_transplant/transplant_rat45/20180830_transplant_rat45_mri/s_2018083001/csi_13c_16x16_07'];
path(50).proton = [base_path 'data/lung_transplant/transplant_rat45/20180830_transplant_rat45_mri/s_2018083001/axial_t1_gre_01.img/'];
path(50).slc = 8;

%rat 47, syn, L--> L
path(51).name = [base_path 'data/lung_transplant/transplant_rat47/20180906_transplant_rat47_mri/s_2018090602/csi_13c_16x16_03'];
path(51).proton = [base_path 'data/lung_transplant/transplant_rat47/20180906_transplant_rat47_mri/s_2018090602/axial_ssfp_fid_01.img/'];
path(52).slc = 5;

path(53).name = [base_path 'data/lung_transplant/transplant_rat47/20180914_transplant_rat47_mri/s_2018091402/csi_13c_16x16_02'];
path(53).proton = [base_path 'data/lung_transplant/transplant_rat47/20180914_transplant_rat47_mri/s_2018091402/axial_pd_rat_01.img/'];
path(53).slc = 9; %11 for  choosing data

%rat 48 L-->W
path(54).name = [base_path 'data/lung_transplant/transplant_rat48/20180903_transplant_rat48_mri/s_2018090302/csi_13c_16x16_02'];
path(54).proton = [base_path 'data/lung_transplant/transplant_rat48/20180903_transplant_rat48_mri/s_2018090302/axial_t1_gre_01.img/'];
path(54).slc = 10;

path(55).name = [base_path 'data/lung_transplant/transplant_rat48/20180906_transplant_rat48_mri/s_2018090601/csi_13c_16x16_03'];
path(55).proton = [base_path 'data/lung_transplant/transplant_rat48/20180906_transplant_rat48_mri/s_2018090601/axial_t1_gre_01.img/'];
path(55).slc = 10;

%rat 49, allo, F1->L(in)
path(56).name = [base_path 'data/lung_transplant/transplant_rat49/20180903_transplant_rat49_mri/s_2018090301/csi_13c_16x16_03'];
% path(56).proton = [base_path 'data/lung_transplant/transplant_rat49/20180903_transplant_rat49_mri/s_2018090301/axial_t1_gre_01.img/' ];
% path(56).slc = 10;
path(56).proton = [base_path 'data/lung_transplant/transplant_rat49/20180903_transplant_rat49_mri/s_2018090301/axial_ssfp_fid_01.img/' ];
path(56).slc = 6;

path(57).name = [base_path 'data/lung_transplant/transplant_rat49/20180907_transplant_rat49_mri/s_2018090701/csi_13c_16x16_03'];
path(57).proton = [base_path 'data/lung_transplant/transplant_rat49/20180907_transplant_rat49_mri/s_2018090701/axial_pd_rat_01.img/' ];
path(57).slc = 7;

path(58).name = [base_path 'data/lung_transplant/transplant_rat49/20180914_transplant_rat49_mri/s_2018091403/csi_13c_16x16_02'];
path(58).proton = [base_path 'data/lung_transplant/transplant_rat49/20180914_transplant_rat49_mri/s_2018091403/axial_pd_rat_01.img/' ];
path(58).slc = 9; %use 9 afterwards. 11 for picking

path(59).name = [base_path 'data/lung_transplant/transplant_rat49/20180927_transplant_rat49_mri/s_2018092701/csi_13c_16x16_02'];
path(59).proton = [base_path 'data/lung_transplant/transplant_rat49/20180927_transplant_rat49_mri/s_2018092701/axial_pd_rat_01.img/'];
path(59).slc = 9; %used 11 for selection

path(60).name = [base_path 'data/lung_transplant/transplant_rat49/20180930_transplant_rat49_mri/s_2018093001/csi_13c_16x16_04'];
path(60).proton = [base_path 'data/lung_transplant/transplant_rat49/20180930_transplant_rat49_mri/s_2018093001/axial_pd_rat_01.img/'];
path(60).slc = 10; %conservative selection. 9 may be good too

path(61).name = [base_path 'data/lung_transplant/transplant_rat49/20181020_transplant_rat49_mri/s_2018102001/csi_13c_16x16_03'];
path(61).proton = [base_path 'data/lung_transplant/transplant_rat49/20181020_transplant_rat49_mri/s_2018102001/axial_pd_rat_01.img/'];
path(61).slc = 12; %conservative again. 11 would have worked

path(62).name = [base_path 'data/lung_transplant/transplant_rat49/20181120_transplant_rat49_mri/s_2018112001/csi_13c_16x16_02'];
path(62).proton = [base_path 'data/lung_transplant/transplant_rat49/20181120_transplant_rat49_mri/s_2018112001/axial_pd_rat_01.img/'];
path(62).slc = 8;

path(63).name = [base_path 'data/lung_transplant/transplant_rat49/20181122_transplant_rat49_mri/s_2018112202/csi_13c_16x16_04'];
path(63).proton = [base_path 'data/lung_transplant/transplant_rat49/20181122_transplant_rat49_mri/s_2018112202/axial_pd_rat_02.img/'];
path(63).slc = 8;

path(64).name = [base_path 'data/lung_transplant/transplant_rat49/20181130_transplant_rat49_mri/s_2018113001/csi_13c_16x16_04'];
path(64).proton = [base_path 'data/lung_transplant/transplant_rat49/20181130_transplant_rat49_mri/s_2018113001/axial_pd_rat_02.img/'];
path(64).slc = 8;

path(65).name = [base_path 'data/lung_transplant/transplant_rat49/20181212_transplant_rat49_mri/s_2018121201/csi_13c_16x16_04'];
path(65).proton = [base_path 'data/lung_transplant/transplant_rat49/20181212_transplant_rat49_mri/s_2018121201/axial_pd_rat_02.img/'];
path(65).slc = 8;

path(66).name = [base_path 'data/lung_transplant/transplant_rat49/20190119_transplant_rat49_mri/s_2019011902/csi_13c_16x16_02'];
path(66).proton = [base_path 'data/lung_transplant/transplant_rat49/20190119_transplant_rat49_mri/s_2019011902/axial_pd_rat_02.img/'];
path(66).slc = 8;

path(67).name = [base_path 'data/lung_transplant/transplant_rat49/20190124_transplant_rat49_mri/s_2019012401/csi_13c_16x16_02'];
path(67).proton = [base_path 'data/lung_transplant/transplant_rat49/20190124_transplant_rat49_mri/s_2019012401/axial_pd_rat_02.img/'];
path(67).slc = 7;

path(84).name = [base_path 'data/lung_transplant/transplant_rat49/20190204_transplant_rat49_mri/s_2019020401/csi_13c_16x16_04'];
path(84).proton = [base_path 'data/lung_transplant/transplant_rat49/20190204_transplant_rat49_mri/s_2019020401/axial_pd_rat_02.img/'];
path(84).slc = 8; %use 8 for overlay

%rat 50 L(in) --> L(in)
path(68).name = [base_path 'data/lung_transplant/transplant_rat50/20180919_transplant_rat50_mri/s_2018091901/csi_13c_16x16_02'];
path(68).proton = [base_path 'data/lung_transplant/transplant_rat50/20180919_transplant_rat50_mri/s_2018091901/axial_pd_rat_01.img/'];
path(68).slc = 11;

%rat 51 L(in) --> L(in)
path(69).name = [base_path 'data/lung_transplant/transplant_rat51/20180914_transplant_rat51_mri/s_2018091401/csi_13c_16x16_02'];
path(69).proton = [base_path 'data/lung_transplant/transplant_rat51/20180914_transplant_rat51_mri/s_2018091401/axial_pd_rat_01.img/'];
path(69).slc = 12;

path(70).name = [base_path 'data/lung_transplant/transplant_rat51/20180918_transplant_rat51_mri/s_2018091801/csi_13c_16x16_03'];
path(70).proton = [base_path 'data/lung_transplant/transplant_rat51/20180918_transplant_rat51_mri/s_2018091801/axial_pd_rat_01.img/'];
path(70).slc = 9;

%rat 52 L(in) --> L(in)
path(71).name = [base_path 'data/lung_transplant/transplant_rat52/20180922_transplant_rat52_mri/s_2018092201/csi_13c_16x16_02'];
path(71).proton = [base_path 'data/lung_transplant/transplant_rat52/20180922_transplant_rat52_mri/s_2018092201/axial_pd_rat_01.img/'];
path(71).slc = 9;

path(72).name = [base_path 'data/lung_transplant/transplant_rat52/20180927_transplant_rat52_mri/s_2018092702/csi_13c_16x16_02'];
path(72).proton = [base_path 'data/lung_transplant/transplant_rat52/20180927_transplant_rat52_mri/s_2018092702/axial_pd_rat_01.img/'];
path(73).slc = 9;

%rat 53 L(in) --> L(in)
path(74).name = [base_path 'data/lung_transplant/transplant_rat53/20180924_transplant_rat53_mri/s_2018092401/csi_13c_16x16_02'];
path(74).proton = [base_path 'data/lung_transplant/transplant_rat53/20180924_transplant_rat53_mri/s_2018092401/axial_pd_rat_01.img/'];
path(74).slc = 10;

%rat 54 WF --> L(in)
path(75).name = [base_path 'data/lung_transplant/transplant_rat54/20180928_transplant_rat54_mri/s_2018092801/csi_13c_16x16_02'];
path(75).proton = [base_path 'data/lung_transplant/transplant_rat54/20180928_transplant_rat54_mri/s_2018092801/axial_pd_rat_01.img/'];
path(75).slc = 9;

path(76).name = [base_path 'data/lung_transplant/transplant_rat54/20181001_transplant_rat54_mri/s_2018100101/csi_13c_16x16_02'];
path(76).proton = [base_path 'data/lung_transplant/transplant_rat54/20181001_transplant_rat54_mri/s_2018100101/axial_pd_rat_01.img/'];
path(76).slc = 11;

%rat 55 WF --> L(in)
path(77).name = [base_path 'data/lung_transplant/transplant_rat55/20181008_transplant_rat55_mri/s_2018100801/csi_13c_16x16_05'];
path(77).proton = [base_path 'data/lung_transplant/transplant_rat55/20181008_transplant_rat55_mri/s_2018100801/axial_pd_rat_01.img/'];
path(77).slc = 11;

%rat 57 WF->L(in)
path(78).name = [base_path 'data/lung_transplant/transplant_rat57/20181012_transplant_rat57_mri/s_2018101201/csi_13c_16x16_03'];
path(78).proton = [base_path 'data/lung_transplant/transplant_rat57/20181012_transplant_rat57_mri/s_2018101201/axial_pd_rat_01.img/'];
path(78).slc = 8;

%rat 59 
path(79).name = [base_path 'data/lung_transplant/transplant_rat59/20181212_transplant_rat59/s_2018121202/csi_13c_16x16_02'];
path(79).proton = [base_path 'data/lung_transplant/transplant_rat59/20181212_transplant_rat59/s_2018121202/axial_ssfp_fid_01.img/'];
path(79).slc = 5;

% rat 60
path(80).name = [base_path 'data/lung_transplant/transplant_rat60/20190119_transplant_rat60_mri/s_2019011901/csi_13c_16x16_03'];
path(80).proton = [base_path 'data/lung_transplant/transplant_rat60/20190119_transplant_rat60_mri/s_2019011901/axial_pd_rat_02.img/'];
path(80).slc = 8;

path(81).name = [base_path 'data/lung_transplant/transplant_rat60/20190122_transplant_rat60_mri/s_2019012201/csi_13c_16x16_02'];
path(81).proton = [base_path 'data/lung_transplant/transplant_rat60/20190122_transplant_rat60_mri/s_2019012201/axial_pd_rat_02.img/'];
path(81).slc = 7;

% rat DA1
path(82).name = [base_path 'data/lung_transplant/transplant_ratDA1/20190124_transplant_ratDA1_mri/s_2019012402/csi_13c_16x16_02'];
path(82).proton = [base_path 'data/lung_transplant/transplant_ratDA1/20190124_transplant_ratDA1_mri/s_2019012402/axial_pd_rat_02.img/'];
path(82).slc = 7;

% rat DA2
path(83).name = [base_path 'data/lung_transplant/transplant_ratDA2/s_2019020501/csi_13c_16x16_02'];
path(83).proton = [base_path 'data/lung_transplant/transplant_ratDA2/s_2019020501/axial_pd_rat_01.img/'];
path(83).slc = 8;

% skip number 84 as rat 49 took it

% transplant rat 61
path(86).name = [base_path 'data/lung_transplant/transplant_rat61/20190129_transplant_rat61/s_2019012901/csi_13c_16x16_04'];
path(86).proton = [base_path 'data/lung_transplant/transplant_rat61/20190129_transplant_rat61/s_2019012901/axial_pd_rat_02.img/'];
path(86).slc = 9; % 9 for segmentation, 10 for display 

% transplant rat 62
path(87).name = [base_path 'data/lung_transplant/transplant_rat62/20190212_transplant_rat62_mri/s_2019021201/csi_13c_16x16_03'];
path(87).proton = [base_path 'data/lung_transplant/transplant_rat62/20190212_transplant_rat62_mri/s_2019021201/axial_pd_rat_02.img/'];
path(87).slc = 8 

% transplant rat 63
path(88).name = [base_path 'data/lung_transplant/transplant_rat63/20190215_transplant_rat63_mri/s_2019021501/csi_13c_16x16_04'];
path(88).proton = [base_path 'data/lung_transplant/transplant_rat63/20190215_transplant_rat63_mri/s_2019021501/axial_pd_rat_01.img/'];
path(88).slc = 10;

% transplant rat 67, DA --> iL
path(89).name = [base_path 'data/lung_transplant/transplant_rat67/20190524_transplant_rat67_c13/s_2019052401/csi_13c_16x16_02'];
path(89).proton = [base_path 'data/lung_transplant/transplant_rat67/20190524_transplant_rat67_c13/s_2019052401/axial_t1_gre_02.img/'];
path(89).slc = 8

% template for starting
% path().name = [base_path ''];
% path().proton = [base_path ''];
% path().slc =