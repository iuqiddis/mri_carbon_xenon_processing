%

switching_computers();

path = struct('name','','injection','');


%Lung Transplants

%control rat 1: only xenon imaging done
%control rat 2: only xenon imaging done

%rat 3, allo
path(780).name = [base_path 'data/lung_transplant/transplant_rat3/20160408_transplant_rat3_mri/s_2016040802/csi_13c_16x16_06_temp']
path(781).name = [base_path 'data/lung_transplant/transplant_rat3/20160412_transplant_rat3_mri/s_2016041201/csi_13c_16x16_04'];

%rat 4 (?)
path(790).name = [base_path 'data/lung_transplant/transplant_rat4/20160616_transplant_rat4_mri/s_2016061601/csi_13c_16x16_02'];

%rat 5, (?)
path(800).name = [base_path 'data/lung_transplant/transplant_rat5/20160803_transplant_rat5_mri/s_2016080301/csi_13c_16x16_04'];
path(801).name = [base_path 'data/lung_transplant/transplant_rat5/20160825_transplant_rat5_mri/s_2016082502/csi_13c_16x16_04'];

%rat 6, syn
path(810).name = [base_path 'data/lung_transplant/transplant_rat6/20160808_transplant_rat6_mri/s_2016080801/csi_13c_16x16_04'];
path(811).name = [base_path 'data/lung_transplant/transplant_rat6/20160812_transplant_rat6_mri/s_2016081201/csi_13c_16x16_03'];
path(812).name = [base_path 'data/lung_transplant/transplant_rat6/20160825_transplant_rat6_mri/s_2016082501/csi_13c_16x16_03'];
path(813).name = [base_path 'data/lung_transplant/transplant_rat6/20161128_transplant_rat6_mri/s_2016112802/csi_13c_16x16_10'];

%rat 7, syn, collapsed
path(820).name = [base_path 'data/lung_transplant/transplant_rat7/20160826_transplant_rat7_mri/s_2016082601/csi_13c_16x16_03'];
path(821).name = [base_path 'data/lung_transplant/transplant_rat7/20160830_transplant_rat7_mri/s_2016083001/csi_13c_16x16_03'];
path(822).name = [base_path 'data/lung_transplant/transplant_rat7/20160907_transplant_rat7_mri/s_2016090701/csi_13c_16x16_04'];
path(823).name = [base_path 'data/lung_transplant/transplant_rat7/20161130_transplant_rat7_mri/s_2016113002/csi_13c_16x16_06'];

%rat 11, syn
path(830).name = [base_path 'data/lung_transplant/transplant_rat11/20161208_transplant_rat11_mri/s_2016120802/csi_13c_16x16_03'];
path(831).name = [base_path 'data/lung_transplant/transplant_rat11/20161212_transplant_rat11_mri/s_2016121202/csi_13c_16x16_05'];
path(832).name = [base_path 'data/lung_transplant/transplant_rat11/20161219_transplant_rat11_mri/s_2016121901/csi_13c_16x16_03'];
path(833).name = [base_path 'data/lung_transplant/transplant_rat11/20170130_transplant_rat11_mri/s_2017013002/csi_13c_16x16_05'];

%rat 13, syn
path(840).name = [base_path 'data/lung_transplant/transplant_rat13/20170127_transplant_rat13_mri/s_2017012701/csi_13c_16x16_05'];
path(841).name = [base_path 'data/lung_transplant/transplant_rat13/20170131_transplant_rat13_mri/s_2017013101/csi_13c_16x16_03'];
path(842).name = [base_path 'data/lung_transplant/transplant_rat13/20170207_transplant_rat13_mri/s_2017020701/csi_13c_16x16_02'];
path(843).name = [base_path 'data/lung_transplant/transplant_rat13/20170208_transplant_rat13_mri/s_2017020801/csi_13c_16x16_02'];
path(844).name = [base_path 'data/lung_transplant/transplant_rat13/20170301_transplant_rat13_mri/s_2017030101/csi_13c_16x16_02'];

%rat 14, syn, collapsed
path(850).name = [base_path 'data/lung_transplant/transplant_rat14/20170217_transplant_rat14_mri/s_2017021701/csi_13c_16x16_02'];

%rat 15, syn, collapsed
path(860).name = [base_path 'data/lung_transplant/transplant_rat15/20170225_transplant_rat15_mri/s_2017022501/csi_13c_16x16_02'];

%rat 16, syn
path(870).name = [base_path 'data/lung_transplant/transplant_rat16/20170224_transplant_rat16_mri/s_2017022401/csi_13c_16x16_02'];
path(871).name = [base_path 'data/lung_transplant/transplant_rat16/20170228_transplant_rat16_mri/s_2017022804/csi_13c_16x16_02'];
path(872).name = [base_path 'data/lung_transplant/transplant_rat16/20170307_transplant_rat16_mri/s_2017030702/csi_13c_16x16_03'];
path(873).name = [base_path 'data/lung_transplant/transplant_rat16/20170323_transplant_rat16_mri/s_2017032301/csi_13c_16x16_02'];

%rat 17, allo
path(880).name = [base_path 'data/lung_transplant/transplant_rat17/20170407_transplant_rat17_mri/s_2017040701/csi_13c_16x16_02'];
path(881).name = [base_path 'data/lung_transplant/transplant_rat17/20170411_transplant_rat17_mri/s_2017041101/csi_13c_16x16_02'];
path(882).name = [base_path 'data/lung_transplant/transplant_rat17/20170418_transplant_rat17_mri/s_2017041801/csi_13c_16x16_03'];

%rat 20
% 890 was bad acquisition (no signal)
path(890).name = [base_path 'data/lung_transplant/transplant_rat20/20170511_transplant_rat20_mri/s_2017051101/csi_13c_16x16_08'];
path(891).name = [base_path 'data/lung_transplant/transplant_rat20/20170512_transplant_rat20_mri/s_2017051201/csi_13c_16x16_16'];
path(892).name = [base_path 'data/lung_transplant/transplant_rat20/20170515_transplant_rat20_mri/s_2017051501/csi_13c_16x16_03'];
path(893).name = [base_path 'data/lung_transplant/transplant_rat20/20170525_transplant_rat20_mri/s_2017052501/csi_13c_16x16_01'];
path(894).name = [base_path 'data/lung_transplant/transplant_rat20/20170526_transplant_rat20_mri/s_2017052601/csi_13c_16x16_03'];

%rat WL1, allo
path(900).name = [base_path 'data/lung_transplant/transplant_ratWL1/20170227_transplant_ratWL1_mri/s_2017022702/csi_13c_16x16_02'];

%rat WL2, allo
path(910).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170302_transplant_ratWL2_mri/s_2017030201/csi_13c_16x16_02'];
path(911).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170306_transplant_ratWL2_mri/s_2017030602/csi_13c_16x16_02'];
path(912).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170313_transplant_ratWL2_mri/s_2017031302/csi_13c_16x16_06'];
path(913).name = [base_path 'data/lung_transplant/transplant_ratWL2/20170331_transplant_ratWL2_mri/s_2017033101/csi_13c_16x16_04'];

%rat 23
path(920).name = [base_path 'data/lung_transplant/transplant_rat23/20170612_transplant_rat23_mri/s_2017061201/csi_13c_16x16_04'];
path(921).name = [base_path 'data/lung_transplant/transplant_rat23/20170615_transplant_rat23_mri/s_2017061501/csi_13c_16x16_02'];
path(922).name = [base_path 'data/lung_transplant/transplant_rat23/20170622_transplant_rat23_mri/s_2017062201/csi_13c_16x16_03'];

%rat 43, allo, L->W
path(930).name = [base_path 'data/lung_transplant/transplant_rat43/20180817_transplant_rat43/s_2018081701/csi_13c_16x16_03'];
path(931).name = [base_path 'data/lung_transplant/transplant_rat43/20180822_transplant_rat43/s_2018082201/csi_13c_16x16_05'];

%rat 44, syn, L->L (inbred)
path(940).name = [base_path 'data/lung_transplant/transplant_rat44/20180818_transplant_rat44/s_2018081801/csi_13c_16x16_02'];
path(941).name = [base_path 'data/lung_transplant/transplant_rat44/20180822_transplant_rat44/s_2018082202/csi_13c_16x16_02'];

%rat 45, allo, L->W 
path(950).name = [base_path 'data/lung_transplant/transplant_rat45/20180826_transplant_rat45_mri/s_2018082601/csi_13c_16x16_04'];

%rat 49, allo, F1->L(in)
path(960).name = [base_path 'data/lung_transplant/transplant_rat49/20180903_transplant_rat49_mri/s_2018090301/csi_13c_16x16_03'];
path(961).name = [base_path 'data/lung_transplant/transplant_rat49/20180907_transplant_rat49_mri/s_2018090701/csi_13c_16x16_03'];
path(962).name = [base_path 'data/lung_transplant/transplant_rat49/20180914_transplant_rat49_mri/s_2018091403/csi_13c_16x16_02'];


%template for starting
%path().name = [base_path ''];
