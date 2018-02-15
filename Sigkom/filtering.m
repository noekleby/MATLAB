function y = filtering( x )
     L=length(x);
     %Initializing delay memory
     v=zeros(1,L);
     v(1:2)=0.5*x(1:2);
     v(3:L) = 0.5*x(3:L) + 1.5*x(1:L-2);
     y=zeros(1,L);
     y(1) = v(1);
     
     for i=2:L
     y(i)=v(i)-0.5*y(i-1);
     end
end

