function x = vprom(f_t,a,b,T,t)

    x=(1/(T)).*int(f_t,t,a,b);

end

