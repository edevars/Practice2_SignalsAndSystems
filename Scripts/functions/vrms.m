function x = vrms(f_t,a,b,T,t)

    x=sqrt((1/T).*int(f_t.^2,t,a,b));

end

