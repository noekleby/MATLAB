% niutval= [2]; % 5 10 20 30 50 100
% AntallUtval=1000;
% pauseint=0.05;
% n=5;
% p=0.2;
% for(i=1:AntallUtval)	
% 	utval=binornd(n,p, niutval,1);	
% 	gjsnitt(i)=mean(utval);
% 	subplot(1,2,1);
% 	hist(utval);
% 	subplot(1,2,2);
% 	hist(gjsnitt(1:i));
% 	pause(pauseint)
% end
sample_size=[2 5 10 20 30 50 100];
number_of_sizes=length(sample_size);
for i=1:number_of_sizes
unif_sample_matrix=rand(sample_size(i),1000);
if i>1
unif_sample_matrix_mean=mean(unif_sample_matrix);
end
if i==1
unif_sample_matrix_mean=unif_sample_matrix;
end
samplesize_string=num2str(sample_size(i));
subplot(3,3,i);
hist(unif_sample_matrix_mean);
xlabel('Gjennomsnitt');
ylabel('Forekomster');
title(['n = ',samplesize_string]);
end