%xe129_data_parameters

% the acquired image may be needed to shift up or down
% this sets up by how much in the x direction

path(1003).shift = 4;
path(1004).shift = -2;
path(1005).shift = -2;
path(1006).shift = 4;
path(1007).shift = 4;
path(1010).shift = -3;
path(1011).shift = 1;
path(1012).shift = -3;
path(1013).shift = -3;
path(1020).shift = -4;
path(1021).shift = -4;
path(1022).shift = 2;
path(1023).shift = 2;


%if deblurring is turned on, this adjust the exponential constant
% its actually this number multiplied by 1e-6

path(1003).deblurring = 19;
path(1004).deblurring = 21;
path(1005).deblurring = 13;
path(1006).deblurring = 12;
path(1007).deblurring = 20;
path(1010).deblurring = 10;
path(1011).deblurring = 10;
path(1012).deblurring = 19;
path(1013).deblurring = 18;
path(1020).deblurring = 9;
path(1021).deblurring = 10;
path(1022).deblurring = 10;
path(1023).deblurring = 7;

    
