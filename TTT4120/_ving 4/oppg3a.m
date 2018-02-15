hold on
lb_num=[0.1 0.1];
lb_den=[2 -1.8];
[h_lb, w]=freqz(lb_num, lb_den);
subplot(2,1,1);
plot(w, abs(h_lb));
title('Lower branch');
xlabel('Angular frequency');
ylabel('Magnitude response');

ub_num=[1.9 -1.9];
ub_den=[2 -1.8];
[h_ub, w]=freqz(ub_num, ub_den);
subplot(2,1,2);
plot(w, abs(h_ub));
title('Upper branch');
xlabel('Angular frequency');
ylabel('Magnitude response');