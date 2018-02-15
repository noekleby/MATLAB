function [q,delta,x_dec,y_rep] = quantize(signal,Nbit)
[M,N] = size(signal); %M = Number of rows, N=Number of columns
q=zeros(M,N);

%Find delta
in_min = min(min(signal)); in_max = max(max(signal));
delta = (in_max-in_min)/2^(Nbit);


%Find decision levels
x_dec = zeros(1,2^(Nbit)-1);
x_dec(1:end) = in_min + (1:length(x_dec))*delta;

%Find representation levels
y_rep = zeros(1,2^(Nbit));
y_rep(1:end) = in_min + ((0:length(y_rep)-1)+.5)*delta;

if M==1 %One dimensional
     [indx, q] = quant_map(signal,x_dec,y_rep); %Quantize the signal
else
    for m=1:M %Two dimensional
       [indx, q(m,1:end)] = quant_map(signal(m,1:end),x_dec,y_rep);
    end
end

end

