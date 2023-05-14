k=5:1:10;       %k is between 5 and 10
tol=2.^-k;       

tic        %start of timer
x = rand; 
y = rand;
Ntotal=1;
Ninside=0;
if x^2 + y^2 <= 1
        Ninside = Ninside + 1;
end
 est = 4*(Ninside / Ntotal);
while abs(est-pi)/pi<=tol
      Nototal=Ntotal+1;
        if x(1)^2+x(2)^2<=1
            Ninside=Ninside+1;
        end
    est = 4*(Ninside / Ntotal);
end

toc    %end of timer




