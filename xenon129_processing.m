%%
xe129_data_list_20170124();
xe129_data_parameters();

ll= 1020;

lb = 30;
deblurring = 0;


%
[fnorm8,RE,IM] = csireconabs_20170319(path(ll).name,lb,deblurring);
fnorm8 = flipud(fnorm8);

shift = 0;
if ~isempty(path(ll).shift)
    shift = path(ll).shift;
    display('Using previously stored circular shift value')
    fprintf('shift = %d \n', shift)
end

fnorm8 = circshift(fnorm8, shift, 1);

%
gp = zeros(16,16);
tp = zeros(16,16);
bp = zeros(16,16);

%

ppm_shift = -458;
switch ll
    case 1011
        ppm_shift = -377;
    case 1012
        ppm_shift = -377;
        
end

ppm = [1:1:512] + ppm_shift;
figure(1)
plot(ppm,squeeze(fnorm8(12,11,:)))

figure(11)
%plot(squeeze(fnorm8(12,11,:)))
plot(squeeze(fnorm8(11,13,:)))


%
for n = 1:16
    for m = 1:16
        %gp(n,m) = sum(fnorm8(n,m,430:490));
        gp(n,m) = sum(fnorm8(n,m,370:395));
    end
end

figure(2)
subplot(4,3,1)
imagesc(gp)
title('Gas Phase')
axis image
caxis([1 max(max(gp))])

subplot(4,3,7)
gp2 = interp2(gp,3, 'cubic');
imagesc(gp2)
title('Gas Phase')
axis image
caxis([1 max(max(gp2))])

%%
for n = 1:16
    for m = 1:16
        %tp(n,m) = sum(fnorm8(n,m,262:318));
        tp(n,m) = sum(fnorm8(n,m,262:280));
    end
end

figure(2)
subplot(4,3,2)
imagesc(tp)
title('Tissue Phase')
axis image
%caxis([1.3 max(max(tp))])
caxis([0.2 max(max(tp))])

subplot(4,3,8)
tp2 = interp2(tp,3, 'cubic');
imagesc(tp2)
title('Tissue Phase')
axis image
%caxis([1.3 max(max(tp2))])
caxis([0.2 max(max(tp2))])



%%
for n = 1:16
    for m = 1:16
        bp(n,m) = sum(fnorm8(n,m,200:262));
        bp(n,m) = sum(fnorm8(n,m,240:262));
    end
end

figure(2)
subplot(4,3,3)
imagesc(bp)
title('Blood Phase')
axis image
caxis([1.1 max(max(bp))])

subplot(4,3,9)
bp2 = interp2(bp,3, 'cubic');
imagesc(bp2)
title('Blood Phase')
axis image
caxis([1.1 max(max(bp))])


%% Just re-plotting with blurring on

%deblurring = 7;


if ~isempty(path(ll).deblurring)
    deblurring = path(ll).deblurring;
    display('Using previously stored deblurring value')
    fprintf('Deblurring = %d \n', deblurring)
end

deblurring = deblurring*1e-6;

%%

[fnorm8,RE,IM] = csireconabs_20170319(path(ll).name,lb,deblurring);
fnorm8 = flipud(fnorm8);
fnorm8 = circshift(fnorm8, 4, 1);

%%
gp = zeros(16,16);
tp = zeros(16,16);
bp = zeros(16,16);

%%
ppm = [1:1:512] -458;
figure(1)
plot(ppm,squeeze(fnorm8(12,11,:)))
%plot(squeeze(fnorm8(12,11,:)))

%%
for n = 1:16
    for m = 1:16
        gp(n,m) = sum(fnorm8(n,m,430:490));
    end
end

figure(2)
subplot(4,3,4)
imagesc(gp)
title('Gas Phase')
axis image
caxis([2.3 max(max(gp))])

subplot(4,3,10)
gp2 = interp2(gp,3, 'cubic');
imagesc(gp2)
title('Gas Phase')
axis image
caxis([2.3 max(max(gp2))])

%%
for n = 1:16
    for m = 1:16
        tp(n,m) = sum(fnorm8(n,m,262:318));
    end
end

figure(2)
subplot(4,3,5)
imagesc(tp)
title('Tissue Phase')
axis image
caxis([1.95 max(max(tp))])

subplot(4,3,11)
tp2 = interp2(tp,3, 'cubic');
imagesc(tp2)
title('Tissue Phase')
axis image
caxis([1.95 max(max(tp2))])



%%
for n = 1:16
    for m = 1:16
        bp(n,m) = sum(fnorm8(n,m,200:262));
    end
end

figure(2)
subplot(4,3,6)
imagesc(bp)
title('Blood Phase')
axis image
caxis([2.0 max(max(bp))])

subplot(4,3,12)
bp2 = interp2(bp,3, 'cubic');
imagesc(bp2)
title('Blood Phase')
axis image
caxis([2.0 max(max(bp))])

%%

