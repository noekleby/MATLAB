m1 = [ 1:5; 6:10; 11:15; 16:20; 21:25 ];
m2 = zeros (5 , 5) ;
m2(1,1)=m1(5,5);
v1=m1(1,:);
m2(3,:)=v1;
m2(:,3)=m1(2,:);

disp(m2);