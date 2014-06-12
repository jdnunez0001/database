function  [salida]= noexiste(A,D,relacion)

salida = true;
for i = 1:103591
    if ((A==relacion(i,2)) && (D==relacion(i,3)))
        salida=false;
        break;
    end
    
end


