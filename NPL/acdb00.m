for i = 1:103591 %Para cada par A-B
    contar=4;
    userA=relacion(i,2);
    userB=relacion(i,3);
   
    for j = 1:103591
        if(contar==115)  
            break; 
        end;
        if ((relacion(j,2)==userA) && (relacion(j,3)~=userB) && relacion(j,1)==-1) 
        %Buscamos una relacion A-C con C~=B y no existe c->B y tac=1
        
            for l = 1:103591
                if(contar==115)  
                    break; 
                end;
                if ((relacion(l,2)==relacion(j,3)) && (relacion(l,3)~=userB)&& (relacion(l,3)~=userA)&&relacion(l,1)==-1 && noexiste(userA,relacion(l,3),relacion(:,1:3)))
                %Buscamos una relacion C-D con D~=A y D~=B y NO_EXISTE
                %relacion A-D y tcd=1
            
            
                    for k = 1:103591
                        if ((relacion(k,2)==relacion(l,3)) && (relacion(k,3)==userB)) 
                            %Buscamos una relacion D-B
                    
                        relacion(i,contar)=relacion(k,1);
                        contar=contar+1;
                        break;
                        end
                    end
                end
            end
        end
    end
    i
end