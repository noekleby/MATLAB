x1 = quantize(lena,1);
x2 = quantize(lena,2);
x3 = quantize(lena,4);

figure % create new figure
subplot(2,2,1) % first subplot
imagesc(lena);
colormap(gray); 
caxis([0 255]);
title('Original');
subplot(2,2,2) % first subplot
imagesc(x1);
title('1 bit');
hold
subplot(2,2,3) % first subplot
imagesc(x2);
title('2 bit');
hold
subplot(2,2,4) % first subplot
imagesc(x3);
title('4 bit');
hold