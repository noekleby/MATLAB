function [indx, quants] = quant_map(signal,partition_x,representation_y)
%QUANT_MAP Produce a quantization index and a quantized output value.
% Given a signal, partition levels partition_x and a set of representation
% levels representation_y the function QUANT_MAP quantizes the signal.
% (Stripped down version of quantize.m from the Communications toolbox)
% 
% [indx,quants] = quant_map(signal,partition_x,representation_y) returns
% the quantization indices as indx and the quantized version of the signal 
% as quants.

signal = signal(:); %Treat all elements of signal as a single column
[n_sig, m_sig] = size(signal); %

%Compute indx
indx = zeros(n_sig,1);
for n = 1: length(partition_x)
    indx = indx + (signal > partition_x(n)); %Using > as a boolean operator.
end

if nargout < 2
    return
end

%Compute quant
if nargin < 3
    error('Not enough input arguments to compute quant');
end
quants = representation_y(indx+1);
end