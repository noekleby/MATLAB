wavaudiofile='Dolly.wav';

[x,Fs]=audioread(wavaudiofile);
filter = fopen('nums1.txt','r');

y = fft(x);
v = conv(y,filter);

w = ifft(v);

filename = 'output.wav';
audiowrite(filename,w,Fs,'BitsPerSample',24);