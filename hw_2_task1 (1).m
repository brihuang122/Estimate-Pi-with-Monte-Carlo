k=10:1:20;                    %k is a number between 10 and 20
Ntotal=2.^(k)                 %total number of dots = 2^k
Ninside=0
est=zeros(1,length(Ntotal));  %pi value 

for i=1:length(Ntotal)        %generates the length within each Ntotal
    Ninside=0;
    for j=1:Ntotal(i)
        x=rand();
        y=rand();
        if x^2+y^2<=1           %counts the number of dots inside the circle
            Ninside=Ninside+1;  %count goes up by 1 if in circle
        end
    end
    est(i)=4*(Ninside/Ntotal(i))  %estimate of pi
end
error=abs(pi-est)                 %error

yyaxis left                 %plot for esimated pi value
semilogx(Ntotal,est);
ylabel('pi estimation');
yyaxis right                %plot for error
semilogx(Ntotal,error);
ylabel('error')
grid on
