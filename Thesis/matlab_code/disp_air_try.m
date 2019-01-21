clear all
close all

nm = 10.^-9;

%x = [0.25:0.01:1.5];
x = [250:1500].*nm;

%dispersion_air =((0.05792105)./(238.0185-lamda.^-2)) ...
 %               + ((0.00167917)./(57.362-lamda.^-2));
            
n = 1+0.05792105./(238.0185-x.^-5)+0.00167917./(57.362-x.^-5);

plot(x,n)