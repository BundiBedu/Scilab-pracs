clc
function rankofA=matrixRank(A)
    
    counter=0
    for i=[1:rows]
        for j=[1:cols]
            if (A(i,j)~=0)
                counter=counter+1
                break
            end
        end        
    end
    rankofA=counter
    //disp(counter)
endfunction
matri=input("Enter a matrix")
[rows,cols]=size(matri)
disp(rows,cols)
function echelonOfA=EchelonForm(A)
    echelonOfA=A
for i=2:rows
    for j=1:i-1
        echelonOfA(i,:)=echelonOfA(i,:)-(echelonOfA(i,j)/echelonOfA(j,j))*echelonOfA(j,:)
    end    
end
endfunction  
disp(EchelonForm(matri))  
disp(matrixRank(EchelonForm(matri)))
