function p = potencia(f_t,a,b,T,t)

    p=(1/T).*int((f_t).^2,t,a,b);

end

